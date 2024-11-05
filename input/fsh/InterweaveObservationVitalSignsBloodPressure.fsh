Profile: InterweaveObservationVitalSignsBloodPressure
Parent: UKCore-Observation-VitalSigns-BloodPressure
Id: Interweave-Observation-VitalSigns-BloodPressure
Description: "Interweave Observation Vital Signs Blood Pressure resource profile - DRAFT."
Title: "InterweaveObservationVitalSignsBloodPressure"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[triggeredByR5] 0..0

* identifier 0..* MS

* basedOn ^short = "DISCOURAGED - This field does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer."

* partOf ^short = "DISCOURAGED - This field does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer."

* category ^binding.strength = #required
* category.coding.display = "Vital Signs" (exactly)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* code.coding[loinc].version 0..0
* code.coding[loinc].code 1..1
* code.coding[loinc].display 1..1
* code.coding[loinc].display = "Blood pressure panel with all children optional" (exactly)

* code.coding[snomedCT].version 0..0
* code.coding[snomedCT].code 1..1
* code.coding[snomedCT].display 1..1

* subject 1..1 MS
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

* focus 0..0

* encounter MS
* encounter only Reference(Interweave-Encounter)

* effective[x] only dateTime or instant
* effective[x] 1..1 MS
* effective[x] ^short = "This is the time/time period during which the observation was taken."

* issued 0..0

* performer only Reference(Practitioner or PractitionerRole or CareTeam)
* insert Ruleset-ReferenceWithReferenceAndDisplay(performer)

* dataAbsentReason 0..0

* interpretation 0..0

* note 0..1 MS

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (required)
* insert Ruleset-CodingWithSystemCodeDisplay(bodySite)

* insert Ruleset-CodingWithSystemCodeDisplay(method)

* referenceRange 0..0

* hasMember 0..0

* derivedFrom only Reference(Interweave-Observation or Interweave-QuestionnaireResponse)

* insert Ruleset-CodingWithSystemCodeDisplay(component.code)
* component[SystolicBP].id 0..0
* component[SystolicBP].extension 0..0
* component[SystolicBP].code MS
* component[SystolicBP].code.id 0..0
* component[SystolicBP].code.coding[loinc].id 0..0
* component[SystolicBP].code.coding[loinc].extension 0..0
* component[SystolicBP].code.coding[loinc].version 0..0
* component[SystolicBP].code.coding[loinc].system 1..1
* component[SystolicBP].code.coding[loinc].system = "http://loinc.org" (exactly)
* component[SystolicBP].code.coding[loinc].code 1..1
* component[SystolicBP].code.coding[loinc].display 1..1
* component[SystolicBP].code.coding[snomedCT].id 0..0
* component[SystolicBP].code.coding[snomedCT].extension 0..0
* component[SystolicBP].code.coding[snomedCT].version 0..0
* component[SystolicBP].code.coding[snomedCT].code 1..1
* component[SystolicBP].code.coding[snomedCT].system 1..1
* component[SystolicBP].code.coding[snomedCT].system = "http://snomed.info/sct" (exactly)
* component[SystolicBP].code.coding[snomedCT].display 1..1
* component[SystolicBP].value[x] MS
//* component[SystolicBP].value[x].id 0..0
//* component[SystolicBP].value[x].extension 0..0
* component[SystolicBP].value[x].code 1..1
* component[SystolicBP].value[x].system 1..1
* component[SystolicBP].value[x].unit 1..1
* component[SystolicBP].dataAbsentReason 0..0
* component[SystolicBP].interpretation MS
* component[SystolicBP].interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (required)
* insert Ruleset-CodingWithSystemCodeDisplay(component[SystolicBP].interpretation)
* component[SystolicBP].interpretation.id 0..0
* component[SystolicBP].interpretation.extension 0..0
* component[SystolicBP].interpretation.coding.id  0..0
* component[SystolicBP].interpretation.coding.extension 0..0 

* component[DiastolicBP].id 0..0
* component[DiastolicBP].extension 0..0
* component[DiastolicBP].code MS
* component[DiastolicBP].code.id 0..0
* component[DiastolicBP].code.extension 0..0
* component[DiastolicBP].code.coding[loinc].id 0..0
* component[DiastolicBP].code.coding[loinc].extension 0..0
* component[DiastolicBP].code.coding[loinc].system 1..1
* component[DiastolicBP].code.coding[loinc].system = "http://loinc.org" (exactly)
* component[DiastolicBP].code.coding[loinc].version 0..0
* component[DiastolicBP].code.coding[loinc].code 1..1
* component[DiastolicBP].code.coding[loinc].display 1..1
* component[DiastolicBP].code.coding[snomedCT].id 0..0
* component[DiastolicBP].code.coding[snomedCT].extension 0..0
* component[DiastolicBP].code.coding[snomedCT].version 0..0
* component[DiastolicBP].code.coding[snomedCT].code 1..1
* component[DiastolicBP].code.coding[snomedCT].system 1..1
* component[DiastolicBP].code.coding[snomedCT].system = "http://snomed.info/sct" (exactly)
* component[DiastolicBP].code.coding[snomedCT].display 1..1
* component[DiastolicBP].value[x] MS
//* component[DiastolicBP].value[x].id 0..0
//* component[DiastolicBP].value[x].extension 0..0
* component[DiastolicBP].value[x].code 1..1
* component[DiastolicBP].value[x].system 1..1
* component[DiastolicBP].value[x].unit 1..1
* component[DiastolicBP].dataAbsentReason MS
* component[DiastolicBP].dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* insert Ruleset-CodingWithSystemCodeDisplay(component[DiastolicBP].dataAbsentReason)
* component[DiastolicBP].dataAbsentReason.id 0..0
* component[DiastolicBP].dataAbsentReason.extension 0..0
* component[DiastolicBP].dataAbsentReason.coding.id  0..0
* component[DiastolicBP].dataAbsentReason.coding.extension 0..0
* component[DiastolicBP].interpretation MS
* component[DiastolicBP].interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (required)
* insert Ruleset-CodingWithSystemCodeDisplay(component[DiastolicBP].interpretation)
* component[DiastolicBP].interpretation.id 0..0
* component[DiastolicBP].interpretation.extension 0..0
* component[DiastolicBP].interpretation.coding.id  0..0
* component[DiastolicBP].interpretation.coding.extension 0..0 

* extension[bodyPosition].id 0..0
* code.id 0..0
* code.extension 0..0
//* code.coding.id 0..0
//* code.coding.extension 0..0
* code.coding[loinc].id 0..0
* code.coding[loinc].extension 0..0
* code.coding[snomedCT].id 0..0
* code.coding[snomedCT].extension 0..0
* category.id 0..0
* category.extension 0..0
* category.coding.id 0..0
* category.coding.extension 0..0
* subject.id 0..0
* subject.extension 0..0
* interpretation.id 0..0
* interpretation.extension 0..0
* interpretation.coding.id 0..0
* interpretation.coding.extension 0..0
* bodySite.id 0..0
* bodySite.extension 0..0
* bodySite.coding.id 0..0
* bodySite.coding.extension 0..0
* method.id 0..0
* method.extension 0..0
* method.coding.id 0..0
* method.coding.extension 0..0
* referenceRange.id 0..0
* referenceRange.extension 0..0
* performer.id 0..0
* performer.extension 0..0

* component.id 0..0
* component.extension 0..0
* component.code.id 0..0
* component.code.extension 0..0
* component.code.coding.id 0..0
* component.code.coding.extension 0..0