Profile: InterweaveFlag
Parent: Flag
Id: Interweave-Flag
Description: "Interweave Flag resource profile - DRAFT."
Title: "InterweaveFlag"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////

* status 1..1 MS
* status ^short = "Indicates whether this flag is active or it is no longer active and needs to be displayed to a user."

* category 1..1 MS
* category from Interweave-FlagCategory (required)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* code 1..1 MS
* code from Interweave-FlagType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(code)

* subject 1..1 MS
// Subject: Every Flag MUST be linked to a patient
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)
* subject ^short = "The patient to which the flag is assigned."

///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////
* period.start 0..1 MS
* period.start ^short = "The date that the flag was placed against the patient"

///////////////////////////////////////
// --- OPTIONAL FIELDS ---
///////////////////////////////////////
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierOptional(flag)

* author 0..1
* author only Reference(Interweave-Practitioner or Interweave-Organization or Interweave-OrganizationalTeam)
* author ^short = "The practitioner, organizational team or organization which placed the flag against the patient."


///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////
* encounter 0..0

* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* category.id 0..0
* category.extension 0..0
* category.coding.id 0..0
* category.coding.extension 0..0
* code.id 0..0
* code.extension 0..0
* code.coding.id 0..0
* code.coding.extension 0..0
* subject.id 0..0
* subject.extension 0..0
* period.id 0..0
* period.extension 0..0