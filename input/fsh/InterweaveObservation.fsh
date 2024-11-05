Profile: InterweaveObservation
Parent: UKCore-Observation
Id: Interweave-Observation
Description: "Interweave Observation resource profile - DRAFT."
Title: "InterweaveObservation"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[triggeredByR5] 0..0
* extension contains Extension-Interweave-ValuePrecision named valuePrecision 0..1
* extension[Extension-Interweave-ValuePrecision] ^short = "Explicit precision of the number"

* identifier 0..* MS
* identifier.assigner only Reference(Interweave-Organization)

* basedOn ^short = "DISCOURAGED - This field does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer."

* partOf ^short = "DISCOURAGED - This field does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer."

* code 1..1 MS
* insert Ruleset-CodingWithSystemCodeDisplay(code)

* category 1..* MS
* category.coding.version 0..0
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category contains observationCategory 1..1
* category[observationCategory] ^binding.strength = #required
* category[observationCategory].coding.system 1..
* category[observationCategory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category[observationCategory].coding.version ..0
* category[observationCategory].coding.code 1..
* category[observationCategory].coding.display 1..
* insert Ruleset-CodingWithSystemCodeDisplay(category)

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

* dataAbsentReason MS
* dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* insert Ruleset-CodingWithSystemCodeDisplay(dataAbsentReason)

* interpretation MS
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (required)
* insert Ruleset-CodingWithSystemCodeDisplay(interpretation)

* note 0..1 MS

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (required)
* insert Ruleset-CodingWithSystemCodeDisplay(bodySite)

* insert Ruleset-CodingWithSystemCodeDisplay(method)

* device only Reference(Device)

* referenceRange MS

* hasMember 0..0

* component.extension contains Extension-Interweave-ValuePrecision named valuePrecision 0..1
* component.code MS
* insert Ruleset-CodingWithSystemCodeDisplay(component.code)
* component.value[x] MS
* component.dataAbsentReason MS
* component.dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* insert Ruleset-CodingWithSystemCodeDisplay(component.dataAbsentReason)

* component.interpretation MS
* component.interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (required)
* insert Ruleset-CodingWithSystemCodeDisplay(component.interpretation)
* component.referenceRange MS

* derivedFrom only Reference(Interweave-Observation or Interweave-QuestionnaireResponse)

* identifier.id 0..0
* code.id 0..0
* code.coding.id 0..0
* category.id 0..0
* category.coding.id 0..0
* category[observationCategory].id 0..0
* category[observationCategory].coding.id 0..0
* subject.id 0..0
* dataAbsentReason.id 0..0
* dataAbsentReason.coding.id 0..0
* interpretation.id 0..0
* interpretation.coding.id 0..0
* bodySite.id 0..0
* bodySite.coding.id 0..0
* method.id 0..0
* method.coding.id 0..0
* referenceRange.id 0..0
* performer.id 0..0

* component.id 0..0
* component.code.id 0..0
* component.code.coding.id 0..0
* component.dataAbsentReason.id 0..0
* component.dataAbsentReason.coding.id 0..0
* component.interpretation.id 0..0
* component.interpretation.coding.id 0..0

* identifier.extension 0..0
* code.extension 0..0
* code.coding.extension 0..0
* category.extension 0..0
* category.coding.extension 0..0
* category[observationCategory].extension 0..0
* category[observationCategory].coding.extension 0..0
* subject.extension 0..0
* dataAbsentReason.extension 0..0
* dataAbsentReason.coding.extension 0..0
* interpretation.extension 0..0
* interpretation.coding.extension 0..0
* bodySite.extension 0..0
* bodySite.coding.extension 0..0
* method.extension 0..0
* method.coding.extension 0..0
* referenceRange.extension 0..0
* performer.extension 0..0

//* component.extension 0..0
* component.code.extension 0..0
* component.code.coding.extension 0..0
* component.dataAbsentReason.extension 0..0
* component.dataAbsentReason.coding.extension 0..0
* component.interpretation.extension 0..0
* component.interpretation.coding.extension 0..0