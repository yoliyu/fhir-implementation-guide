Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $loinc = http://loinc.org

Instance: EWSQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "respiratoryrate"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='8232200932098').answer.valueQuantity.value"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "heartrate"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='8051258817821').answer.valueQuantity.value"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "spo2"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='7266048740543').answer.valueQuantity.value"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "systolicbloodpressure"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='4033232822901').item.where(linkId='5954955657844').answer.valueQuantity.value"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "temperature"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='8428104633621').answer.valueQuantity.value"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "avpu"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='1847242159303').answer.valueCoding.code"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
* extension[=].valueCodeableConcept = $observation-category#vital-sign "vital-sign"
* name = "Early Warning Score"
* title = "Early Warning Score"
* status = #active
* code = $sct#445193007 "Early warning scoring system (assessment scale)"
* item[0].type = #quantity
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding = $unitsofmeasure#/min "per minute"
* item[=].extension[+].valueBoolean = true
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].linkId = "8232200932098"
* item[=].code[0] = $loinc#9279-1 "Respiratory Rate"
* item[=].code[+] = $sct#86290005 "Respiratory rate"
* item[=].text = "Respiratory Rate"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[+].type = #quantity
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding = $unitsofmeasure#/min "per minute"
* item[=].extension[+].valueBoolean = true
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].linkId = "8051258817821"
* item[=].code[0] = $loinc#8867-4 "Heart rate"
* item[=].code[+] = $sct#364075005 "Heart rate"
* item[=].text = "Pulse Rate"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[+].type = #quantity
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding = $unitsofmeasure#%
* item[=].extension[+].valueBoolean = true
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].linkId = "7266048740543"
* item[=].code[0] = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* item[=].code[+] = $sct#431314004 "Peripheral oxygen saturation"
* item[=].text = "Oxygen Saturation"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[+].item[0].type = #quantity
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].item[=].extension[=].valueCoding = $unitsofmeasure#mm[Hg] "millimeter of mercury"
* item[=].item[=].extension[+].valueBoolean = true
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].item[=].linkId = "5954955657844"
* item[=].item[=].code[0] = $loinc#8480-6 "Systolic blood pressure"
* item[=].item[=].code[+] = $sct#72313002 "Systolic blood pressure"
* item[=].item[=].text = "Systolic Blood Pressure"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[+].type = #quantity
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].item[=].extension.valueCoding = #mmHg "mmHg"
* item[=].item[=].linkId = "5714235832052"
* item[=].item[=].code[0] = $loinc#8462-4 "Diastolic blood pressure"
* item[=].item[=].code[+] = $sct#1091811000000102 "Diastolic arterial pressure"
* item[=].item[=].text = "Diastolic Blood Pressure"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].type = #group
* item[=].extension.valueBoolean = true
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].linkId = "4033232822901"
* item[=].code[0] = $loinc#85354-9 "Blood pressure panel with all children optional"
* item[=].code[+] = $sct#75367002 "Blood pressure"
* item[=].text = "Blood Presure"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[+].type = #quantity
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].extension[=].valueCoding = $unitsofmeasure#Cel "degree Celsius"
* item[=].extension[+].valueBoolean = true
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].linkId = "8428104633621"
* item[=].code[0] = $loinc#8310-5 "Body temperature"
* item[=].code[+] = $sct#276885007 "Core body temperature"
* item[=].text = "Temperature"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[+].type = #choice
* item[=].linkId = "1847242159303"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].extension.valueExpression.description = "BMI Calculation"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "(iif(%respiratoryrate>35,3,iif(%respiratoryrate<=35 and %respiratoryrate>31,2,iif(%respiratoryrate<=30 and %respiratoryrate>21,1,iif(%respiratoryrate<=20 and %respiratoryrate>=9,1,iif(%respiratoryrate<9,3))))))+(iif(%spo2>92,0,iif(%spo2<=92 and %spo2>90,1,iif(%spo2<=89 and %spo2>85,2,iif(%spo2<85,3)))))+(iif(%temperature>38.9,2,iif(%temperature<=38.9 and %temperature>=38,1,iif(%temperature<=37.9 and %temperature>=36,0,iif(%temperature<=35.9 and %temperature>=35,1,iif(%temperature<=34.9 and %temperature>=34,2,iif(%temperature<34,3)))))))+(iif(%systolicbloodpressure>199,2,iif(%systolicbloodpressure<=199 and %systolicbloodpressure>=100,0,%systolicbloodpressure<=99 and %systolicbloodpressure>=80,1,iif(%systolicbloodpressure<=79 and %systolicbloodpressure>=70,2,iif(%systolicbloodpressure<70,3))))))+(iif(%heartrate>129,3,iif(%heartrate<=129 and %heartrate>=110,2,iif(%heartrate<=109 and %heartrate>=100,1,iif(%heartrate<=99 and %heartrate>=50,0,iif(%heartrate<=49 and %heartrate>=40,1,iif(%heartrate<=39 and %heartrate>=30,2,iif(%heartrate<30,3))))))))+(iif(%avpu,0,iif(%avpu,1,iif(%avpu,2,iif(%avpu,3)))))"
* item[=].code = $sct#449159002 "Alert voice pain unresponsive scale"
* item[=].text = "Alert Voice Pain Unresponsive Scale"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding = $sct#248234008 "Mentally alert"
* item[=].answerOption[+].valueCoding = $sct#450847001 "Responds to pain"
* item[=].answerOption[+].valueCoding = $sct#300202002 "Responds to voice"
* item[=].answerOption[+].valueCoding = $sct#422768004 "Unresponsive"
* item[+].type = #integer
* item[=].extension.valueBoolean = true
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item[=].linkId = "7366215096122"
* item[=].code = $sct#445193007 "Early warning scoring system (assessment scale)"
* item[=].text = "Total Score"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = true