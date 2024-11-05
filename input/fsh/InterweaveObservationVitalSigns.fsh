Profile: InterweaveObservationVitalSigns
Parent: UKCore-Observation-VitalSigns
Id: Interweave-Observation-VitalSigns
Description: "Interweave Observation VitalSigns resource profile - DRAFT."
Title: "InterweaveObservationVitalSigns"
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

* category ^binding.strength = #required
* category.coding.display = "Vital Signs" (exactly)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* code from UKCore-ObservationVitalSignsType (preferred)
* code.coding[loinc].version 0..0
* code.coding[loinc].code 1..1
* code.coding[loinc].display 1..1

* code.coding[snomedCT].version 0..0
* code.coding[snomedCT].code 1..1
* code.coding[snomedCT].display 1..1

* subject 1..1 MS
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

* focus 0..0

* encounter MS
* encounter only Reference(Interweave-Encounter)

* effective[x] only dateTime or Period or instant
* effective[x] 1..1 MS
* effective[x] ^short = "This is the time/time period during which the observation was taken."

* issued 0..0

* value[x] only Quantity
* value[x] 0..1 MS

* dataAbsentReason MS
* dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* insert Ruleset-CodingWithSystemCodeDisplay(dataAbsentReason)

* interpretation MS
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (required)
* insert Ruleset-CodingWithSystemCodeDisplay(interpretation)

* performer only Reference(Practitioner or PractitionerRole or CareTeam)
* insert Ruleset-ReferenceWithReferenceAndDisplay(performer)

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
* component.value[x] only Quantity
* component.value[x] 0..1 MS
* component.dataAbsentReason MS
* component.dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* insert Ruleset-CodingWithSystemCodeDisplay(component.dataAbsentReason)

* component.interpretation MS
* component.interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (required)
* insert Ruleset-CodingWithSystemCodeDisplay(component.interpretation)
* component.referenceRange MS

* derivedFrom only Reference(Interweave-Observation or Interweave-QuestionnaireResponse)

* identifier.id 0..0
* identifier.extension 0..0
* extension[bodyPosition].id 0..0
* extension[bodyPosition].extension 0..0
* code.id 0..0
* code.extension 0..0
* code.coding[loinc].id 0..0
* code.coding[loinc].extension 0..0
* code.coding[snomedCT].id 0..0
* code.coding[snomedCT].extension 0..0
* category.id 0..0
* category.coding.id 0..0
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
* performer.extension 0..0

* component.id 0..0
* component.code.id 0..0
* component.code.coding.id 0..0
* component.dataAbsentReason.id 0..0
* component.dataAbsentReason.coding.id 0..0
* component.interpretation.id 0..0
* component.interpretation.coding.id 0..0

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
* referenceRange.extension 0..0

* component.code.extension 0..0
* component.code.coding.extension 0..0
* component.dataAbsentReason.extension 0..0
* component.dataAbsentReason.coding.extension 0..0
* component.interpretation.extension 0..0
* component.interpretation.coding.extension 0..0