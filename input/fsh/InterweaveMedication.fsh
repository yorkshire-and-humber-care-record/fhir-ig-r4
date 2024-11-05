Profile: InterweaveMedication
Parent: UKCore-Medication
Id: Interweave-Medication
Description: "Interweave Medication resource profile - DRAFT."
Title: "InterweaveMedication"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* identifier.assigner only Reference(Interweave-Organization)

* code from UKCore-MedicationCode (required) 
* insert Ruleset-CodingWithSystemCodeDisplay(code)

* form 0..1 MS
* form from UKCore-MedicationForm (required)
* insert Ruleset-CodingWithSystemCodeDisplay(form)

* manufacturer only Reference(Interweave-Organization)
* insert Ruleset-ReferenceWithReferenceAndDisplay(manufacturer)

* ingredient ^short = "DISCOURAGED - Identifies a particular constituent of interest in the product."
* ingredient.item[x] 1..1 MS

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////

* identifier.id 0..0
* identifier.extension 0..0
* status 0..0
* form.id 0..0
* form.extension 0..0
* form.coding.id 0..0
* form.coding.extension 0..0
* manufacturer.id 0..0
* manufacturer.extension 0..0
* manufacturer.type 0..0
* code.id 0..0
* code.extension 0..0
* code.coding.id 0..0
* code.coding.extension 0..0
* ingredient.id 0..0
* ingredient.extension 0..0
* batch.id 0..0
* batch.extension 0..0