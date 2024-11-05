Profile: InterweaveEncounterGrouping
Parent: UKCore-Encounter
Id: Interweave-EncounterGrouping
Description: "Interweave Encounter Grouping resource profile - DRAFT."
Title: "InterweaveEncounterGrouping"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

// Identifier:
// This is a business identifier for the Encounter.
// The value for a local identifier must be populated and contain the internal id for this Encounter on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(encounter)

// Status: Already mandatory in FHIR, emphasise with Must Support
* status MS

// Status History: Leave as optional - more likely to be captured on the underlying encounters

// Class: Make mandatory, MS - must be "Grouping"
//      (Use our own list in case so we can add this to it
* class 1..1 MS
* class from Interweave-EncounterClass (required)
* class.system = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-EncounterClass"
* class.code = #GROUPING
* class.display = "Grouping of related Encounters"
//* class = Interweave-EncounterClass#GROUPING "Grouping of related Encounters" (exactly)
* insert Ruleset-RawCodingWithSystemCodeDisplay(class)

* classHistory 0..0

// Subject: Every Encounter MUST be linked to a patient
* subject 1..1 MS 
// We only want Patients - not Groups
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)
* subject ^short = "The patient (NOT group) present at the encounter"


// The following fields are captured in the underlying individual encounters
* extension[Extension-UKCore-EmergencyCareDischargeStatus] 0..0
* extension[Extension-UKCore-OutcomeOfAttendance] 0..0
//* extension[Extension-UKCore-DischargeMethod] 0..0
* extension[Extension-UKCore-LegalStatus] 0..0
* type 0..0
* priority 0..0
* basedOn 0..0  
* appointment 0..0
* participant 0..0
* reasonCode 0..0 
* diagnosis 0..0
* location 0..0
* episodeOfCare 0..0
* reasonReference 0..0

// Length: Discouraged. This duplicates information that is already available via the Period.
// In some systems it is used to indicate exactly how long a patient was in the consulting room (eg for billing), but this is not relevant here.
* length ^short = "DISCOURAGED: This duplicates information that is already available via the Period"

// PartOf: Excluded. This is the top of the hierarchy
* partOf 0..0

// Hospitalization: Must Support
//   However it will not always be relevant to actaully populate all fields
//   Depending on scenario it could include information on admission, discharge, both, or neither
//   However where relevant it must be populated - all information must be available in these base encounters
* hospitalization 0..1 MS
* insert Ruleset-Hospitalization

* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* statusHistory.id 0..0
* statusHistory.extension 0..0
* class.id 0..0
* class.extension 0..0
* subject.id 0..0
* subject.extension 0..0
* participant.id 0..0
* participant.extension 0..0
* diagnosis.id 0..0
* diagnosis.extension 0..0
* hospitalization.id 0..0
* hospitalization.origin.id 0..0
* hospitalization.origin.extension 0..0
* hospitalization.admitSource.id 0..0
* hospitalization.admitSource.extension 0..0
* hospitalization.admitSource.coding.id 0..0
* hospitalization.admitSource.coding.extension 0..0
* hospitalization.destination.id 0..0
* hospitalization.destination.extension 0..0
* hospitalization.dischargeDisposition.id 0..0
* hospitalization.dischargeDisposition.extension 0..0
* hospitalization.dischargeDisposition.coding.id 0..0
* hospitalization.dischargeDisposition.coding.extension 0..0
* location.id 0..0
* location.extension 0..0