Alias: $sct = http://snomed.info/sct
Alias: $UKCore-LegalStatusContext = https://fhir.hl7.org.uk/CodeSystem/UKCore-LegalStatusContext
Alias: $UKCore-LegalStatusClassificationEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-LegalStatusClassificationEngland


Instance: InterweaveEncounterExample-Emergency-Inprogress
InstanceOf: InterweaveEncounter
Description: "Interweave Encounter example - Emergency - Inprogress"

* insert Ruleset-ExampleMetaForHospital(Encounter)
* meta.versionId = "2"
* insert Ruleset-ExampleLocalId(encounter, RCB.ENC-456-XYZ)

* extension.extension[0].url = "legalStatusContext"
* extension.extension[=].valueCodeableConcept = $UKCore-LegalStatusContext#admission "Admission"
* extension.extension[+].url = "legalStatusClassification"
* extension.extension[=].valueCodeableConcept = $UKCore-LegalStatusClassificationEngland#02 "Formally detained under Mental Health Act Section 2"
* extension.url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-LegalStatus"

* status = #in-progress
// * statusHistory[+].status =  #in-progress
// * statusHistory[=].period.start = "2022-01-08T11:03:00Z"
// * statusHistory[=].period.end = "2022-01-09T09:00:00Z"


* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER "emergency"

* type.coding[0] = $sct#113091000000109 "Seen in minor injuries department" 

* serviceType.coding[0] = $sct#310000008 "Accident and Emergency service"

* priority.coding[0] = http://terminology.hl7.org/CodeSystem/v3-ActPriority#EM "emergency"

* subject = Reference(InterweavePatientExample-MustSupport)
* subject.display = "Jane BLOGGS"

* diagnosis[0].condition = Reference(InterweaveConditionExample-BleedingFromEar)
* diagnosis[=].use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"
* diagnosis[=].rank = 1

* participant[0].type[0].coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[=].individual = Reference(InterweavePractitionerExample-Consultant)
* participant[=].individual.display = "Dr Jane BLOGGS"

* participant[+].type[0].coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ADM "admitter" 
* participant[=].individual = Reference(InterweavePractitionerExample-Consultant)
* participant[=].individual.display = "Dr Jane BLOGGS"

* period.start = "2024-10-08T11:03:00Z" 
//* period.end = "2024-10-09T09:00:00Z"

* reasonCode = http://snomed.info/sct#299007 "Paraffinoma of skin"

* location[0].location = Reference(InterweaveLocationExample-Ward-AandE)
* location[=].location.display = "York Hospital: Jubilee Building: Accident and Emergency"
* location[=].status = #active
* location[=].period.start = "2022-01-08T11:03:00Z"
//* location[0].period.end = "2022-01-09T09:00:00Z"

/////////////////////////////////////////////////////////////////////////
Instance: InterweaveEncounterExample-Emergency-finished
InstanceOf: InterweaveEncounter
Description: "Interweave Encounter example - Emergency - finished"

* insert Ruleset-ExampleMetaForHospital(Encounter)

* insert Ruleset-ExampleLocalId(encounter, RCB.ENC-456-XYZ)

* extension[0].extension[0].url = "legalStatusContext"
* extension[=].extension[=].valueCodeableConcept = $UKCore-LegalStatusContext#discharge "Discharge"
* extension[=].extension[+].url = "legalStatusClassification"
* extension[=].extension[=].valueCodeableConcept = $UKCore-LegalStatusClassificationEngland#02 "Formally detained under Mental Health Act Section 2"
* extension[=].url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-LegalStatus"
* extension[+].valueCodeableConcept = $sct#182992009 "Treatment completed"
* extension[=].url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-EmergencyCareDischargeStatus"
* extension[+].valueCodeableConcept = $sct#306689006 "Discharge to home"
* extension[=].url = "https://fhir.interweavedigital.nhs.uk/R4/StructureDefinition/Extension-Interweave-EDDischargeDestination"


* status = #finished
* statusHistory[+].status =  #in-progress
* statusHistory[=].period.start = "2024-10-08T11:03:00Z"
* statusHistory[=].period.end = "2024-10-09T09:00:00Z"


* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER "emergency"

* type.coding[0] = $sct#113091000000109 "Seen in minor injuries department" 

* serviceType.coding[0] = $sct#310000008 "Accident and Emergency service"

* priority.coding[0] = http://terminology.hl7.org/CodeSystem/v3-ActPriority#EM "emergency"


* subject = Reference(InterweavePatientExample-MustSupport)
* subject.display = "Jane BLOGGS"

* participant[0].type[0].coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[=].individual = Reference(InterweavePractitionerExample-Consultant)
* participant[=].individual.display = "Dr Jane BLOGGS"

* participant[+].type[0].coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ADM "admitter" 
* participant[=].individual = Reference(InterweavePractitionerExample-Consultant)
* participant[=].individual.display = "Dr Jane BLOGGS"

* period.start = "2024-10-08T11:03:00Z" 
* period.end = "2024-10-09T09:00:00Z"

* reasonCode = http://snomed.info/sct#299007 "Paraffinoma of skin"

* location[0].location = Reference(InterweaveLocationExample-Ward-AandE)
* location[=].location.display = "York Hospital: Jubilee Building: Accident and Emergency"
* location[=].status = #completed
* location[=].period.start = "2022-01-08T11:03:00Z"
* location[=].period.end = "2022-01-09T09:00:00Z"

/////////////////////////////////////////////////////////////////////////
Instance: InterweavePractitionerBobExample
InstanceOf: InterweavePractitioner
Description: "Interweave Practitioner Bob example"
Usage: #inline

// No meta tags or TextSummary as inline

* identifier[0].system = "https://fhir.nhs.uk/Id/sds-user-id"
* identifier[0].value = "XYZ987"

* active = true
* name[0].given[0] = "Bob"
* name[0].family = "Smithson"
* name[0].prefix = "Dr"

* telecom[0].system = #phone "Phone"
* telecom[0].use = #work "Work"
* telecom[0].value = "01234 9876512"