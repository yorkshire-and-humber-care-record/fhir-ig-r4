Alias: $SCT = http://snomed.info/sct

Profile: InterweaveObservationACVPU
Parent: UKCore-Observation-ACVPU
Id: Interweave-Observation-ACVPU
Description: "Interweave Observation ACVPU resource profile - DRAFT."
Title: "InterweaveObservationACVPU"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[triggeredByR5] 0..0

* identifier 0..* MS
* identifier.assigner only Reference(Interweave-Organization)

* basedOn ^short = "DISCOURAGED - This field does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer."

* partOf ^short = "DISCOURAGED - This field does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer."

* category 1..1 MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.version ..0
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs" (exactly)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* code 1..1 MS
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.display = "Alert Confusion Voice Pain Unresponsive scale score" (exactly)
* insert Ruleset-CodingWithSystemCodeDisplay(code)

* subject 1..1 MS
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

* focus 0..0

* encounter MS
* encounter only Reference(Interweave-Encounter)

* effective[x] only dateTime or Period or instant
* effective[x] 1..1 MS
* effective[x] ^short = "This is the time/time period during which the observation was taken."

* performer only Reference(Practitioner or PractitionerRole or CareTeam)
* insert Ruleset-ReferenceWithReferenceAndDisplay(performer)

* issued 0..0

* value[x] from $UKCore-ACVPU (required)
* insert Ruleset-CodingWithSystemCodeDisplay(value[x])
* valueCodeableConcept.coding.system = "http://snomed.info/sct" (exactly)

* dataAbsentReason MS
* dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* insert Ruleset-CodingWithSystemCodeDisplay(dataAbsentReason)

* interpretation 0..0

* device only Reference(Device)

* note 0..1 MS

* bodySite 0..0

* specimen 0..0

* insert Ruleset-CodingWithSystemCodeDisplay(method)

* referenceRange 0..0

* hasMember 0..0

* derivedFrom only Reference(Interweave-Observation or Interweave-QuestionnaireResponse)

* identifier.id 0..0
* identifier.extension 0..0
* code.id 0..0
* code.coding.id 0..0
* category.id 0..0
* category.coding.id 0..0
* subject.id 0..0
* performer.id 0..0
* dataAbsentReason.id 0..0
* dataAbsentReason.coding.id 0..0
* interpretation.id 0..0
* interpretation.coding.id 0..0
* bodySite.id 0..0
* bodySite.coding.id 0..0
* method.id 0..0
* method.coding.id 0..0
* value[x].id 0..0
* value[x].coding.id 0..0

* code.extension 0..0
* code.coding.extension 0..0
* category.extension 0..0
* category.coding.extension 0..0
* subject.extension 0..0
* dataAbsentReason.extension 0..0
* dataAbsentReason.coding.extension 0..0
* interpretation.extension 0..0
* interpretation.coding.extension 0..0
* bodySite.extension 0..0
* bodySite.coding.extension 0..0
* method.extension 0..0
* method.coding.extension 0..0
* performer.extension 0..0
* value[x].extension 0..0
* value[x].coding.extension 0..0