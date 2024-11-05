Profile: InterweaveSocialCareService
Parent: EpisodeOfCare
Id: Interweave-SocialCareService
Description: "Interweave SocialCareService resource profile (modelled using FHIR EpisodeOfCare)- DRAFT."
Title: "InterweaveSocialCareService"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields
///////////////////////////////////////
// --- EXTENSIONS ---
///////////////////////////////////////

//A MS extension for requester type, As requested by the Social Care Data Standards working group.
* extension contains Extension-Interweave-SocialCareServiceCategory named category 1..1 MS
* extension contains Extension-Interweave-SocialCareServiceTrigger named triggeringAssessment 0..1

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////
* status 1..1 MS
* status from InterweaveSocialCareServiceStatus (required)
* status ^short = "A mandatory flag to indicate the status of the service."

* type 1..1 MS
* type from InterweaveSocialCareServiceType (required)
* type.text 1..1 MS
* insert Ruleset-CodingWithSystemCodeDisplay(type)

* managingOrganization 1..1 MS
* managingOrganization only Reference(Interweave-Organization)
* managingOrganization ^short = "The organisation which is providing the service. This can be a reference to either and external provider or an organisational team."

///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////

* statusHistory MS

* careManager 0..1 MS
* careManager ^short = "An optional link to a practitioner delivering the service."

* period MS
* period.start MS
* period.start ^short = "The date/time when a service commences"

* period.end MS
* period.end ^short = "The date/time that a service ceases"
///////////////////////////////////////
// --- OPTIONAL FIELDS ---
///////////////////////////////////////

//optional localId
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierOptional(socialcareservice)

* referralRequest ^short = "An optional link to a Social Care Contact (ServiceRequest)."


///////////////////////////////////////
// --- Discouraged fields ---
///////////////////////////////////////

* team ^short = "DISCOURAGED - The care team resource is yet to be defined (see notes)"

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////

* diagnosis 0..0
* diagnosis ^short = "Not relevant to social care."

* account 0..0
* account ^short = "Not relevant to social care."

* period.id 0..0
* period.extension 0..0
* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0
* statusHistory.id 0..0
* statusHistory.extension 0..0