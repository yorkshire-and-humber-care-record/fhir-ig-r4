Profile: InterweaveOrganization
Parent: UKCore-Organization
Id: Interweave-Organization
Title: "InterweaveOrganization"
Description: "Interweave Organization resource profile - DRAFT."
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields


///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////

// Name - make this mandatory, at a minimum we always want the organisation's name
* name 1..1 MS

///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////

// Identifier (ODS) - CareConnect already defines a special identifier for ODS Code
// To identify the organisation and tie in with regional master data downloaded from ODS
// All organisations involved in care really should have an ODS code, but it is difficult to mandate more strongly than MS
// For example there may be examples of private sector labs or smaller social care providers who may not have one
* identifier[odsOrganisationCode] 0..1 MS
* identifier[odsOrganisationCode].system MS
* identifier[odsOrganisationCode].value 
* identifier[odsOrganisationCode].assigner only Reference(Interweave-Organization)

// Active:  Assumption is that it is "true" if not populated
// It is however important that both Providers and Consumers can handle appropriatly if "false"
// (Suggested good practice would just be to always populate it)
* active ^short = "Whether this organization is still active - must be both populated and understood if 'false'"

// Type - useful, to identify the type of location
// List created based on the ODS dropdown list here: https://odsportal.digital.nhs.uk/Organisation/Search
* type 0..1 MS
* type.coding ^short = "Kind of organization (based on ODS organisation types)"
* type from Interweave-OrganizationType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(type)

// Address - useful and probably easy to populate. (However is also available from regional master record downloaded from ODS)
* address 0..1 MS
* address.line MS
* address.city MS
* address.district MS
* address.postalCode MS

// Telecom - probably not that useful in practice
* telecom ^short = "Contact details of the location. (However contact details of Locations and Practitioners are probably more useful)."

///////////////////////////////////////
// --- OPTIONAL FIELDS ---
///////////////////////////////////////
* identifier[odsSiteCode].assigner only Reference(Interweave-Organization)

// Identifier (Local) - A local business identifier. 
// Optional - only needed if there is no ODS code
* insert Ruleset-AddLocalIdentifierOptional(organization)

///////////////////////////////////////
// --- Discouraged fields ---
///////////////////////////////////////

* address.use ^short = "DISCOURAGED: Not really relevant here - it is just the current address of the location."
* address.text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the address based on the detailed elements."
* address.period ^short = "DISCOURAGED: Preferably just relevant current details"

// PartOf and Contact - not currently needed
* partOf only Reference(Interweave-Organization)
* partOf ^short = "DISCOURAGED: Currently require just top-level organisation identifiers - not attempting to build organisation tree"
* contact ^short = "DISCOURAGED: Not currently needed. Contact details of Locations and Practitioners are probably more useful"

// There are a couple of UKCore extensions that we don't currently really need
* extension[Extension-UKCore-MainLocation] ^short = "DISCOURAGED"
* extension[http://hl7.org/fhir/StructureDefinition/organization-period] ^short = "DISCOURAGED" 

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////

// Endpoint - removed. Technical endpoints are captured elsewhere (ie via the Participant Registry)
* endpoint 0..0

* identifier[odsOrganisationCode].id 0..0
* identifier[odsOrganisationCode].extension 0..0
* identifier[odsSiteCode].id 0..0
* identifier[odsSiteCode].extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0

* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0

* address.id 0..0
* address.extension 0..0

* contact.id 0..0
* contact.extension 0..0