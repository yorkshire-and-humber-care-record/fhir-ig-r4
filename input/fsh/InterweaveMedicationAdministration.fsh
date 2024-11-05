Profile: InterweaveMedicationAdministration
Parent: UKCore-MedicationAdministration
Id: Interweave-MedicationAdministration
Description: "Interweave MedicationAdministration resource profile - DRAFT."
Title: "InterweaveMedicationAdministration"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* identifier.assigner only Reference(Interweave-Organization)

* category 1..1 MS
* category from UKCore-MedicationAdministrationCategory (required)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* medication[x] from UKCore-MedicationCode (required)

* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)
* subject.type 0..0

* context 0..1 MS
* context only Reference(Interweave-Encounter)
* context ^short = "Encounter administered as part of"

* effective[x] only Period
* effective[x] 1..1 MS
* effectivePeriod.start 1..1 MS

* performer.actor MS
* performer.function from http://hl7.org/fhir/ValueSet/med-admin-perform-function (preferred)

* reasonCode from http://hl7.org/fhir/ValueSet/reason-medication-given-codes (preferred)

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////

* identifier.id 0..0
* identifier.extension 0..0
* instantiates 0..0
* partOf 0..0
* supportingInformation 0..0
* eventHistory 0..0

* category.id 0..0
* category.extension 0..0
* category.coding.id 0..0
* category.coding.extension 0..0
* subject.id 0..0
* subject.extension 0..0
* effective[x].id 0..0
* effective[x].extension 0..0
* performer.id 0..0
* performer.extension 0..0
* dosage.id 0..0
* dosage.extension 0..0
