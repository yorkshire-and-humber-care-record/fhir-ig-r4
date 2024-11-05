Profile: InterweaveAllergyIntolerance
Parent: UKCore-AllergyIntolerance
Id: Interweave-AllergyIntolerance
Description: "Interweave AllergyIntolerance resource profile - DRAFT."
Title: "InterweaveAllergyIntolerance"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* identifier.system 1..1
* identifier.value 1..1
* identifier.assigner only Reference(Interweave-Organization)

* clinicalStatus.id 0..0

* verificationStatus 1..1 

* type 1..1 MS

* category 0..* MS

* criticality 0..1 MS

* insert Ruleset-CodingWithSystemCodeDisplay(code)

* patient only Reference(Interweave-Patient)

* encounter only Reference(Interweave-Encounter)

* onset[x] only dateTime or Age or Period
* onset[x] 0..1 MS

* recordedDate 1..1 MS

* recorder only Reference(Interweave-Patient or Interweave-RelatedPerson or Interweave-Practitioner or Interweave-PractitionerRole)
* asserter 0..1 MS
* asserter only Reference(Interweave-Patient or Interweave-RelatedPerson or Interweave-Practitioner or Interweave-PractitionerRole)

* lastOccurrence 0..1
* lastOccurrence ^short = "DISCOURAGED - maybe misleading unless information is kept acutely up to date."

* reaction.id 0..0
* reaction.manifestation 1..* MS
* insert Ruleset-CodingWithSystemCodeDisplay(reaction.substance)
* insert Ruleset-CodingWithSystemCodeDisplay(reaction.manifestation)
* reaction.onset 0..1 MS
* insert Ruleset-CodingWithSystemCodeDisplay(reaction.exposureRoute)
* reaction.note 0..0

* identifier.id 0..0
* identifier.extension 0..0
* code.id 0..0
* code.extension 0..0
* code.coding.id 0..0
* code.coding.extension 0..0
* reaction.extension 0..0
* reaction.substance.id 0..0
* reaction.substance.extension 0..0
* reaction.substance.coding.id 0..0
* reaction.substance.coding.extension 0..0
* reaction.manifestation.id 0..0
* reaction.manifestation.extension 0..0
* reaction.manifestation.coding.id 0..0
* reaction.manifestation.coding.extension 0..0
* reaction.exposureRoute.id 0..0
* reaction.exposureRoute.extension 0..0
* reaction.exposureRoute.coding.id 0..0
* reaction.exposureRoute.coding.extension 0..0