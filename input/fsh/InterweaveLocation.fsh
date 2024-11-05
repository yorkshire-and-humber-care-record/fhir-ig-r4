Profile: InterweaveLocation
Parent: UKCore-Location
Id: Interweave-Location
Title: "InterweaveLocation"
Description: "Interweave Location resource profile - DRAFT."
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

// Identifier (ODS) - CareConnect already defines a special identifier for ODS Site Code
// Optional - as some locations are not part of an ODS Site (eg patient's house). 
// And not all sites are ODS registed, especially in community / social care.
// But useful if applicable - to help formally identify the site.
/////* identifier[odsSiteCode] MS (no longer must support, as only quite rarely relevant)
* identifier[odsSiteCode] ^short = "ODS Site code to identify the organisation at site level. Should be provided for locations that have one"
* identifier[odsSiteCode].system MS
* identifier[odsSiteCode].value MS
* identifier[odsSiteCode].assigner only Reference(Interweave-Organization)

// Identifier (Local) - A local business identifier, over-and-above the name. 
// Must Support - to assist with more definately identifying the location
* insert Ruleset-AddLocalIdentifierMS(location)


// Should normally be “active”, and only active locations should be used in new references.
// However it may be necessary to retain locations at other statuses (eg inactive) if they have already been used in references
* status 1..1 MS

// Operational Status - we do not need this level of operational detail
* operationalStatus ^short = "DISCOURAGED - this level of operational detail may be difficult to keep up-to-date and is not necessary for regional sharing"


// Name - mandatory, we do need to know what the location is called.
//     A short name for the location. eg “Ward 27” 
//     For a house it could be “Patient’s home”, “Foster home”, etc
* name 1..1 MS
* name ^short = "Name of the location as used by humans. Does not need to be unique, but preferably incorporates any hierarchy for more meaningful display. Eg 'Green Road Hospital, Ward 27, Room 5"

// Mode - always "instance" if provided. (OK to leave it out, in which case that is what will be assumed)
* mode = http://hl7.org/fhir/location-mode#instance "Instance" (exactly)
* mode ^short = "Always a specific instance of a location (not a generic class of location). Assume 'instance' if missing"

// Type - mandatory, as we always want to know what type of location it is - as useful to help understand why the patient may have been going there.
// The standard code list has some very generic entries eg "Hospital", "Community Location", "Community Service Centre", "Patient's Residence"
// which should cover most eventualities at a high level, plus some much more useful and preferable specific entries focused on healthcare.
// So in order of preference we would get:
// 1) An existing specific entry from the list 
// 2) A new specific entry which we curate regionally and add to the list (ie by request, eg to improve the list for social care)
// 3) A generic entry from the list, plus a more descriptive "text" entry
// 4) Just text (still useful as the main purpose of this field is likely to be informing Direct Care)
* type 1..1 MS 
//(Retain optionality about whether code or text is provided)
// If a code is provided then it must be from the original FHIR list, or from an extension code that is curated and added to the regional list
* type from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType (extensible)
* type ^short = "Type of function performed. Useful to indicate the type of activity that is likely to have happened there. EXTENSIBLE on request, eg to cover other care settings"
* insert Ruleset-CodingWithSystemCodeDisplay(type)

// Telecom - required to provide if at all possible, as this is extremely useful if external clinicians want to get in touch to find out more
// If provided then need at least the "system" and "value"
* telecom MS 
* telecom ^short = "Contact details of the location. Very useful for getting in touch to find out more."
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.period ^short = "DISCOURAGED: Preferably just relevant current details"
* telecom.use ^short = "DISCOURAGED: Not really relevant here - it is just the current telecom details of the location."

// Address - must be provided if relevant (eg for Site and House)
//    Not relevant for a Ward or Room.
//    Just the current address for contact purposes (no history)
* address MS
* address ^short = "Physical location. Required when relevant (not for ward or room)"
* address.line MS
* address.city MS
* address.district MS
* address.postalCode MS
* address.use ^short = "DISCOURAGED: Not really relevant here - it is just the current address of the location."
* address.text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the address based on the detailed elements."
* address.period ^short = "DISCOURAGED: Preferably just relevant current details"

// Physical Type - mandatory, to identify whether a site, ward, room, house, etc
// Define a cut-down subset of the FHIR example list for our purposes
* physicalType 1..1 MS
* physicalType.coding 1..1 MS
* physicalType ^short = "Physical form of the location. Extensible by request if additional types needed"
* physicalType from http://hl7.org/fhir/ValueSet/location-physical-type (required)
* insert Ruleset-CodingWithSystemCodeDisplay(physicalType)


// Position - optional. Currently there is no requirement to track exact geographical coordinates.

// Managing Organisation - required if relevant (eg only if belonging to an organisation, not relevant for a house)
//    Shows who the location "belongs" to. Although often the same as the provenance of the message, it might be different (eg if refering to a location elsewhere)
//    (Should normally be known and easy to populate)
* managingOrganization MS
* managingOrganization only Reference(Interweave-Organization)
* insert Ruleset-ReferenceWithReferenceAndDisplay(managingOrganization)
* managingOrganization.type 0..0

// Part Of - must support if relevant
//   (The aim is to build a very simple structure with a maximum of 3 levels - that is easy for a data consumer to display - based on Rooms (optional), which belong to Wards, which belong to a Site. The purpose is to provide basic information about where a patient has been – not necessarily to build a complete and accurate model of the organisation structure.)
//   For a Site – not used
//   For a Ward – points to the owning Site
//   For  Room – points to the owning Ward
//   For a House – not used
* partOf MS
* partOf only Reference(Interweave-Location) 
* partOf ^short = "Another Location this one is physically part of. Must be provided for Ward->Site and Room->Ward to build the hierarchy"
* insert Ruleset-ReferenceWithReferenceAndDisplay(partOf)
* partOf.type 0..0

// Endpoint - removed. Technical endpoints are captured elsewhere (ie via the Participant Registry)
* endpoint 0..0

* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0
* telecom.id 0..0
* telecom.extension 0..0
* address.id 0..0
* address.extension 0..0
* physicalType.id 0..0
* physicalType.extension 0..0
* physicalType.coding.id 0..0
* physicalType.coding.extension 0..0
* position.id 0..0
* position.extension 0..0
* managingOrganization.id 0..0
* managingOrganization.extension 0..0
* partOf.id 0..0
* partOf.extension 0..0
* hoursOfOperation.id 0..0
* hoursOfOperation.extension 0..0