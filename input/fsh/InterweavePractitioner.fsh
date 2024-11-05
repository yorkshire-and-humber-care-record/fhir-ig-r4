Profile: InterweavePractitioner
Parent: UKCore-Practitioner
Id: Interweave-Practitioner
Title: "InterweavePractitioner"
Description: "Interweave Practitioner resource profile - DRAFT."
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

// Identifiers - mandatory to provide at least one identifier (but a lot of choice about which one!) 
* identifier 1..* MS
//* identifier.id 0..0
//* identifier.extension 0..0
//* identifier ^short = "A identifier for the person as this agent. Note that although CareConnect defines slices for SDS ids, use of other professional ids is also possible - see notes"
//* identifier.system 1..1
//* identifier.value 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
    sdsUserID 0..1 and
    sdsRoleProfileID 0..* and
    gmpNumber 0..1 and
    gmcNumber 0..1 and
    nmcNumber 0..1 and
    gphcNumber 0..1 and
    hcpcNumber 0..1 and 
    localIdentifier 0..1

* identifier[sdsUserID] ^short = "An identifier (sdsUserId) that applies to this person in this role."
* identifier[sdsUserID].system 1..
* identifier[sdsUserID].system = "https://fhir.nhs.uk/Id/sds-user-id" (exactly)
* identifier[sdsUserID].value 1..
* identifier[sdsUserID].assigner only Reference(Interweave-Organization)

* identifier[sdsRoleProfileID] ^short = "An identifier (sdsRoleProfileID) that applies to this person in this role."
* identifier[sdsRoleProfileID].system 1..1
* identifier[sdsRoleProfileID].system = "https://fhir.nhs.uk/Id/sds-role-profile-id" (exactly)
* identifier[sdsRoleProfileID].value 1..1
* identifier[sdsRoleProfileID].assigner only Reference(Interweave-Organization)

* identifier[gmpNumber] ^short = "An identifier (gmpNumber - General Medical Practitioner) that applies to this person in this role."
* identifier[gmpNumber].system 1..1
* identifier[gmpNumber].system = "https://fhir.hl7.org.uk/id/gmp-number" (exactly)
* identifier[gmpNumber].value 1..1

* identifier[gmcNumber] ^short = "An identifier (gmcNumber - General Medical Council / Consultant Code) that applies to this person in this role."
* identifier[gmcNumber].system 1..1
* identifier[gmcNumber].system = "https://fhir.hl7.org.uk/id/gmc-number" (exactly)
* identifier[gmcNumber].value 1..1

* identifier[nmcNumber] ^short = "An identifier (nmcNumber - Nursing and Midwifery Council) that applies to this person in this role."
* identifier[nmcNumber].system 1..1
* identifier[nmcNumber].system = "https://fhir.hl7.org.uk/id/nmc-number" (exactly)
* identifier[nmcNumber].value 1..1

* identifier[gphcNumber] ^short = "An identifier (gphcNumber - General Pharmaceautical Council Code) that applies to this person in this role."
* identifier[gphcNumber].system 1..1
* identifier[gphcNumber].system = "https://fhir.hl7.org.uk/id/gphc-number" (exactly)
* identifier[gphcNumber].value 1..1

* identifier[hcpcNumber] ^short = "An identifier (hcpcNumber - Health and Care Professional Council Code) that applies to this person in this role."
* identifier[hcpcNumber].system 1..1
* identifier[hcpcNumber].system = "https://fhir.hl7.org.uk/id/hcpc-number" (exactly)
* identifier[hcpcNumber].value 1..1

* identifier[localIdentifier] ^short = "A local identifier that applies to this person in this role. Please use local identifier at the last resort if none of the other identifiers are not available or as an additional identidier along with others."
* identifier[localIdentifier].system 1..1
* identifier[localIdentifier].system = "https://fhir.interweavedigital.nhs.uk/Id/local-practitioner-identifier" (exactly)
* identifier[localIdentifier].value 1..1
* identifier[localIdentifier].assigner only Reference(Interweave-Organization)


// Active:  Assumption is that it is "true" if not populated
// It is however important that both Providers and Consumers can handle appropriatly if "false"
// (Suggested good practice would just be to always populate it)
* active MS
* active ^short = "Whether this organization is still active - must be both populated and understood if 'false'"

// Name: Mandates that we want there to be exactly one name.
//   To some extent therefore the "use" is not so important
//   However here we also mandate at least a "family" name, plus note that given name, prefix and suffix must be supported if relevant
* name 1..1 MS
* name.id 0..0
* name.extension 0..0
* name.family 1..1 MS
* name.given MS
* name.prefix MS
* name.suffix MS
* name.text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the name based on the detailed elements."
* name.period ^short = "DISCOURAGED: Not relevant as only a single name is permitted"


// Telcom: Leave as optional
// It is very useful to provide a contact phone number and/or email if at all possible – to enable further enquiries about any information seen.
// However care is needed, as these contact details may be widely seen throughout the region. 
* telecom ^short = "A contact detail for the practitioner (that apply to all roles). NB these contact details may be widely seen throughout the region. Only work details suitable for receiving external enquires should be included"

// Address: Discouraged
// Addresses should be provided instead on the relevant organisation / location records. 
// For the purposes of regional sharing then practitioner home addresses must NOT be shared.
* address ^short = "DISCOURAGED: Addresses should be provided instead on the relevant organisation / location records. For the purposes of regional sharing then practitioner home addresses should NOT be shared."

// Gender: Leave as optional
// Birth Date: removed - unnecessary personal information
////* birthDate ^short = "DISCOURAGED: For the purposes of regional sharing then the birth date is not required - this is unnecessary personal information"
* birthDate 0..0

// Photo: At the present time then photos are NOT required. Excluded to avoid any complexities with sharing large image files
* photo 0..0

// Qualifications: 
//   Identified as useful (in the absence of PractitionerRole) to undestand more about their status and skills.
//   (Envisaged however that it will often not be easy to include)
//   (Potentially more to do on refining the exact representation within)
* qualification 0..0
//The code is already mandatory in FHIR... but it could be just text. (If a code, then must be populated fully)
// * qualification.code MS
// * insert Ruleset-CodingWithSystemCodeDisplay(qualification.code)

* identifier[sdsUserID].id 0..0
* identifier[sdsUserID].extension 0..0
* identifier[sdsRoleProfileID].id 0..0
* identifier[sdsRoleProfileID].extension 0..0
* identifier[gmpNumber].id 0..0
* identifier[gmpNumber].extension 0..0
* identifier[gmcNumber].id 0..0
* identifier[gmcNumber].extension 0..0
* identifier[nmcNumber].id 0..0
* identifier[nmcNumber].extension 0..0
* identifier[gphcNumber].id 0..0
* identifier[gphcNumber].extension 0..0
* identifier[hcpcNumber].id 0..0
* identifier[hcpcNumber].extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0