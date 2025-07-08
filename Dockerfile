ARG VARIANT=11-jdk-buster
FROM mcr.microsoft.com/vscode/devcontainers/java:0-${VARIANT} as output
WORKDIR /implementation-guide
RUN apt-get update && apt-get -y install git curl wget graphviz jekyll
RUN . /usr/local/share/nvm/nvm.sh && nvm install 18 && npm install -g fsh-sushi
COPY . .
RUN ["chmod", "+x", "_updatePublisher.sh", "_genonce.sh"]
RUN ["_updatePublisher.sh", "--yes"]  # Be careful with LineBreak on sh files
RUN scripts/_genonce.sh
FROM nginx:latest as implementation-guide
COPY --from=output /implementation-guide/output/ /etc/nginx/html/implementation-guide/
COPY --from=output /implementation-guide/nginx.conf /etc/nginx/nginx.conf