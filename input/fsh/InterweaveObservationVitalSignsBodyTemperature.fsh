Profile: InterweaveObservationVitalSignsBodyTemperature
Parent: UKCore-Observation-VitalSigns-BodyTemperature
Id: Interweave-Observation-VitalSigns-BodyTemperature
Description: "Interweave Observation Vital Signs Body Temperature resource profile - DRAFT."
Title: "InterweaveObservationVitalSignsBodyTemperature"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[triggeredByR5] 0..0
* extension[bodyPosition] 0..0

* identifier 0..* MS
* identifier.assigner only Reference(Interweave-Organization)

* basedOn ^short = "DISCOURAGED - This field does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer."

* partOf ^short = "DISCOURAGED - This field does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer."

* category ^binding.strength = #required
* category.coding.version 0..0
* category.coding.display = "Vital Signs" (exactly)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* code.coding[loinc].version 0..0
* code.coding[loinc].code 1..1
* code.coding[loinc].display 1..1
* code.coding[loinc].display = "Body temperature" (exactly)

* code.coding[snomedCT] ^binding.strength = #required
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

* interpretation MS
* insert Ruleset-CodingWithSystemCodeDisplay(interpretation)

* note 0..1 MS

* bodySite 0..0

* insert Ruleset-CodingWithSystemCodeDisplay(method)

* referenceRange MS

* hasMember 0..0

* valueQuantity.id 0..0
* valueQuantity.extension 0..0
* valueQuantity.unit 1..1
* valueQuantity.system 1..1
* valueQuantity.code 1..1

* specimen 0..0

* device only Reference(Device)

* derivedFrom only Reference(Interweave-Observation or Interweave-QuestionnaireResponse)

* component 0..0

* identifier.id 0..0
* identifier.extension 0..0

* code.id 0..0
* code.extension 0..0
// * code.coding.id 0..0
// * code.coding.extension 0..0
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

* method.id 0..0
* method.extension 0..0
* method.coding.id 0..0
* method.coding.extension 0..0

* interpretation.id 0..0
* interpretation.extension 0..0
* interpretation.coding.id 0..0
* interpretation.coding.extension 0..0

* referenceRange.id 0..0
* referenceRange.extension 0..0

* performer.id 0..0
* performer.extension 0..0