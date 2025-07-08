Profile: HealthonautsPulseRateObservation
Parent: Observation
Description: "Pulse Rate"

* status = #final (exactly)

* category 1..
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs (exactly)

* code 1..
* code = http://snomed.info/sct#364075005 "Heart rate"(exactly)

* subject 1..1
* subject only Reference(HealthonautsPatient)

* effective[x] 1..1
* effective[x] only dateTime

* value[x] 1..1
* value[x] only Quantity
* value[x].unit = "per minute" (exactly)
* value[x].code = #/min (exactly)
* value[x].system = #http://unitsofmeasure.org (exactly)
* value[x].unit 1..1

