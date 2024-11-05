Profile: InterweaveOrganizationalTeam
Parent: UKCore-Organization
Id: Interweave-OrganizationalTeam
Description: "Interweave Organizational Team resource profile (modelled using UK Core Organization) - DRAFT"
Title: "InterweaveOrganizationalTeam"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[Extension-UKCore-MainLocation] 0..0
* extension[http://hl7.org/fhir/StructureDefinition/organization-period] 0..0

// Identifier (Local) - A local business identifier.
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddLocalIdentifierOptional(organization)
* identifier[odsOrganisationCode] 0..0

// Active:  Mandatory flag to indicate whether or not the Organisational Team is active
* active 1..1 MS
* active ^short = "Whether this organizational team is active"

// Type 
* type 1..1 MS
* insert Ruleset-CodingWithSystemCodeDisplay(type)
* type ^short = "Default to Organizational team."
* type.coding.code = #team (exactly)
* type.coding.display = "Organizational team" (exactly)
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)

// Name - make this mandatory, at a minimum we always want the organisational team name
* name 1..1 MS
* name ^short = "Name used for the organizational team."

// Alias - optional, but probably rarely used. One current name should be enough
* alias ^short = "A list of alternate names that the organizational team is known as, or was known as in the past"

// Telecom - Must Support - Vital Information to contact the team to find out information on a person's care
* telecom MS
* telecom ^short = "Contact details of the Organisational team. To be used for the practical purpose of getting in touch about a person’s care."

// Address - Optional, more important to supply contact information
* address ^short = "An address for the organizational team"

// PartOf Mandatory to supply a link to the parent Organisation e.g. the Local Authority
* partOf 1..1 MS
* partOf only Reference(Interweave-Organization)
* partOf ^short = "The organization of which this organizational team forms a part"
* insert Ruleset-ReferenceWithReferenceAndDisplay(partOf)

//Contact removed to avoid confusion with Telecom
* contact 0..0

// Endpoint - removed. Technical endpoints are captured elsewhere (ie via the Participant Registry)
* endpoint 0..0

* identifier.id 0..0
* identifier.extension 0..0
// * identifier[odsSiteCode].id 0..0
// * identifier[odsSiteCode].extension 0..0
// * identifier[localIdentifier].id 0..0
// * identifier[localIdentifier].extension 0..0

* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0
* type.coding.version 0..0

* partOf.id 0..0
* partOf.extension 0..0
* partOf.type 0..0