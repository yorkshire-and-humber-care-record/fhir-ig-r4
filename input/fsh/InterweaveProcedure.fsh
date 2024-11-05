Profile: InterweaveProcedure
Parent: UKCore-Procedure
Id: Interweave-Procedure
Description: "Interweave Procedure resource profile - DRAFT."
Title: "InterweaveProcedure"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

// Identifier: (MS)
// This is a business identifier for the Procedure.
// The value for a local identifier must be populated and contain the internal id for this Procedure on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(procedure)

* statusReason 0..1 MS
* statusReason from http://hl7.org/fhir/ValueSet/procedure-not-performed-reason (preferred)

// Category: Must Support
//   A simple and short list of SNOMED codes to describe the overall category of procedure eg “Surgical Procedure”, “Diagnostic Procedure”
* category 0..1 MS
* category ^binding.strength = #required
* insert Ruleset-CodingWithSystemCodeDisplay(category)

// Code: Mandatory
//   Essential information about what the procedure actually was.
* code 1..1 MS
* code ^binding.strength = #required
* insert Ruleset-CodingWithSystemCodeDisplay(code)
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "coding.system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains
    snomedCT 1..1
* code.coding[snomedCT] 1..1 MS
* code.coding[snomedCT] from https://fhir.hl7.org.uk/ValueSet/UKCore-ProcedureCode (required)
* code.coding[snomedCT].system 1..1 
* code.coding[snomedCT].system = "http://snomed.info/sct" (exactly)
* code.coding[snomedCT].code 1..1
* code.coding[snomedCT].display 1..1

// Subject: Is already mandatory. Essential reference to the patient (only)
* subject MS 
//   We only want Patients - not Groups
* subject only Reference(Interweave-Patient)
* subject ^short = "Who the procedure was performed on. (A patient, NOT group)"
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

// Context: (MS)
//   A reference to the Encounter where the procedure was performed.
//   This is likely to be very useful and should be provided if at all possible. .
* encounter MS  // R4 encounter -> STU3 Context
* encounter only Reference(Interweave-Encounter)
* insert Ruleset-ReferenceWithReferenceOnly(encounter)

// Performed: (Mandatory) (But difficult to specify this for a choice!)
//  performedDateTime is easier to deal with, and would be simpler to exclude performedPeriod, but perhaps over-simplistic.
//  However implication is that consumers must be able to deal with both - eg on a timeline
* performed[x] only Period
* performed[x] 1..1 MS
* performedPeriod.start 1..1 MS

// Reason Code and Reason Reference (leave optional)
//  Could be useful to provide more detail, or Could be useful to link to a Condition or Observation. 
//  But unlikely to be available in early implementations? Return to in future when and if being offered
* reasonCode from http://hl7.org/fhir/ValueSet/procedure-reason (preferred)

//  Useful to populate if known, and if not already obvious from the definition of the procedure
* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (required)
* insert Ruleset-CodingWithSystemCodeDisplay(bodySite)

// Outcome (MS)
//   A short and simple list of “successful”, “unsuccessful”, “partially successful”. Must be populated when relevant and known.
//   (Accepting that for some types of procedure then this may be impossible if there is no simple definition of “success”)
* outcome MS
* outcome from http://hl7.org/fhir/ValueSet/procedure-outcome (required)
* insert Ruleset-CodingWithSystemCodeDisplay(outcome)

// Complication and Complication Detail (leave optional)
//  Optional, to populate with any complication codes / Conditions if relevant and known
// * complication 
// * complication from https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCode (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(complication)

// Follow Up (MS)
//  This is very useful to populate in a regional care record as, 
//  for example, it allows community teams to see that follow up care is needed
//  FHIR does not provide a great list, and there seems to be no well-accepted alternative. So mark as only "preferred" for now
* followUp 0..*
* followUp from http://hl7.org/fhir/ValueSet/procedure-followup (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(followUp)

// Note (Optional)
* note.text 1..1
* note ^short = "Additional information about the Procedure. NB: Any notes may be shared widely across the region, including being viewed by the patient themselves"

// Focal Device (MS)
//  This is useful to provide if relevant (ie if a device has been fitted or changed).
//  May inform community teams with follow up care.
* focalDevice 0..* MS
* focalDevice.action 0..1
* focalDevice.action from http://hl7.org/fhir/ValueSet/device-action (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(focalDevice.action)
* focalDevice.manipulated MS
* insert Ruleset-ReferenceWithReferenceOnly(focalDevice.manipulated)

* basedOn 0..0
* partOf 0..0
* instantiatesUri 0..0
* instantiatesCanonical 0..0
* performer.onBehalfOf 0..0
* asserter 0..0
* recorder 0..0

* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0

* subject.id 0..0
* subject.extension 0..0
* subject.type 0..0

* encounter.id 0..0
* encounter.extension 0..0
* encounter.type 0..0

* code.id 0..0
* code.extension 0..0
* code.coding.id 0..0
* code.coding.extension 0..0

* category.id 0..0
* category.extension 0..0
* category.coding.id 0..0
* category.coding.extension 0..0
* performedPeriod.id 0..0
* performedPeriod.extension 0..0
* performer.id 0..0
* performer.extension 0..0

* outcome.id 0..0
* outcome.extension 0..0
* outcome.coding.id 0..0
* outcome.coding.extension 0..0

* bodySite.id 0..0
* bodySite.extension 0..0
* bodySite.coding.id 0..0
* bodySite.coding.extension 0..0

* complication.id 0..0
* complication.extension 0..0
* complication.coding.id 0..0
* complication.coding.extension 0..0

* followUp.id 0..0
* followUp.extension 0..0
* followUp.coding.id 0..0
* followUp.coding.extension 0..0

* note.id 0..0
* note.extension 0..0

* focalDevice.id 0..0
* focalDevice.extension 0..0
* focalDevice.action.id 0..0
* focalDevice.action.extension 0..0
* focalDevice.action.coding.id 0..0
* focalDevice.action.coding.extension 0..0
* focalDevice.manipulated.id 0..0
* focalDevice.manipulated.extension 0..0