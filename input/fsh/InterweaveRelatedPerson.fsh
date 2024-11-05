Profile: InterweaveRelatedPerson
Parent: UKCore-RelatedPerson
Id: Interweave-RelatedPerson
Description: "Interweave Related Person resource profile - DRAFT."
Title: "InterweaveRelatedPerson"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields
///////////////////////////////////////
// --- EXTENSIONS ---
///////////////////////////////////////

//A MS extensiSon for Social Care Role, As requested by the Social Care Data Standards working group.
* extension contains Extension-Interweave-SocialCareSupportRole named socialCareSupportRole 0..* MS
* extension[Extension-Interweave-SocialCareSupportRole] ^short = "Social Care Support Role: The role which a person plays in this service user's support"

///////////////////////////////////////
// --- Identifiers ---
///////////////////////////////////////
//* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierOptional(RelatedPerson)

///////////////////////////////////////
// --- Core Demographics ---
///////////////////////////////////////

// Active:  Assumption (in detailed definition for both STU3 and R4) is that it is "true" if not populated
// It is however important that both Providers and Consumers can handle appropriatly if "false"
// (Suggested good practice would just be to always populate it)
* active 1..1 MS

// We mandate both a "family" and at least one "given" name, plus note that prefix and suffix must be supported if relevant
* name 1..* MS
* name.use MS
* name.family 1..1 MS
* name.given 1..* MS
* name.prefix 0..* MS
* name.suffix 0..* MS
* name.text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the name based on the detailed elements."

// Telecom: Useful, "must support" and if provided system and value must also be provided
* telecom MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.use MS

///////////////////////////////////////
// --- Other fields ---
///////////////////////////////////////

// Patient reference must be provided, with reference and display populated
//* patient 1..1 MS
* patient only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(patient)

// Relationship must be populated, ensuring code, display and system are provided
* relationship 1..1 MS
* relationship from https://fhir.hl7.org.uk/ValueSet/UKCore-PersonRelationshipType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(relationship)

// Period: useful, "Must Support"
* period 0..1 MS

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////
* photo 0..0

* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* patient.id 0..0
* patient.extension 0..0
* patient.type 0..0
* relationship.id 0..0
* relationship.extension 0..0
* relationship.coding.id 0..0
* relationship.coding.extension 0..0
* name.id 0..0
* name.extension 0..0
* telecom.id 0..0
* telecom.extension 0..0
* telecom.system.id 0..0
* communication.id 0..0
* communication.extension 0..0