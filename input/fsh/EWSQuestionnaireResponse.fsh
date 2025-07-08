Alias: $sct = http://snomed.info/sct

Instance: EWSQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse|2.7"
* meta.tag.code = #"lformsVersion: 34.0.2"
* status = #completed
* authored = "2023-11-08T17:58:26.704Z"
* item[0].linkId = "8232200932098"
* item[=].text = "Respiratory Rate"
* item[=].answer.valueQuantity = 20 '/min' "per minute"
* item[+].linkId = "8051258817821"
* item[=].text = "Pulse Rate"
* item[=].answer.valueQuantity = 60 '/min' "per minute"
* item[+].linkId = "7266048740543"
* item[=].text = "Oxygen Saturation"
* item[=].answer.valueQuantity = 95 '%'
* item[+].linkId = "4033232822901"
* item[=].text = "Blood Presure"
* item[=].item[0].linkId = "5954955657844"
* item[=].item[=].text = "Systolic Blood Pressure"
* item[=].item[=].answer.valueQuantity = 120 'mm[Hg]' "millimeter of mercury"
* item[=].item[+].linkId = "5714235832052"
* item[=].item[=].text = "Diastolic Blood Pressure"
* item[=].item[=].answer.valueQuantity = 86 #mmHg "mmHg"
* item[+].linkId = "8428104633621"
* item[=].text = "Temperature"
* item[=].answer.valueQuantity = 37 'Cel' "degree Celsius"
* item[+].linkId = "1847242159303"
* item[=].text = "Alert Voice Pain Unresponsive Scale"
* item[=].answer.valueCoding = $sct#248234008 "Mentally alert"