Profile: InterweaveSocialCareContact
Parent: UKCore-ServiceRequest
Id: Interweave-SocialCareContact
Description: "Interweave SocialCare Contact resource profile (modelled using UK Core ServiceRequest)- DRAFT."
Title: "InterweaveSocialCareContact"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// --- EXTENSIONS ---
///////////////////////////////////////

//A MS extension for requester type, As requested by the Social Care Data Standards working group.
* extension contains Extension-Interweave-SocialCareRequesterType named requesterType 1..1 MS

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////

* status 1..1 MS
* status from InterweaveSocialCareContactStatus (required)
* status ^short = "A mandatory flag to indicate the status of the contact."

* intent 1..1 MS
* intent = #plan (exactly)

// Subject: Every contact/referral request MUST be linked to a patient
* subject MS
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)
* subject ^short = "The person which is subject of the contact."

* occurrence[x] only dateTime
* occurrence[x] 1..1 MS
* occurrence[x] ^short = "The date/time that the contact was made."

* authoredOn 1..1 MS 
* authoredOn ^short = "The date/time that the contact was recorded."

* reasonCode 1..1 MS
* reasonCode from InterweaveSocialCareContactReason (required)
* insert Ruleset-CodingWithSystemCodeDisplay(reasonCode)
///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////
///////////////////////////////////////
// --- Optional fields ---
///////////////////////////////////////

//Optionally provide a localId
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierOptional(socialcarecontact)

* priority ^short = "The priority for the contact being acted upon/followed up."

//context in STU3
* encounter only Reference(Interweave-Encounter)
* encounter ^short = "Optional link to an encounter resource. e.g. contact for hospital discharge assessments linked back to a hospital encounter."


///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////

* basedOn 0..0
* basedOn ^short = "Not relevant to social care."
* instantiatesUri 0..0
* instantiatesCanonical 0..0
* requisition 0..0
* replaces 0..0
* replaces ^short = "Not relevant to social care."
* reasonReference 0..0
* reasonReference ^short = "Not relevant to social care."
* supportingInfo 0..0
* supportingInfo ^short = "Not relevant to social care."
* note 0..0
* note ^short = "Not relevant to social care."
* relevantHistory 0..0
* relevantHistory ^short = "Not relevant to social care."
* locationCode 0..0
* locationReference 0..0
* insurance 0..0
* specimen 0..0
* bodySite 0..0
* category[genomicsWholeCaseSequencing] 0..0
* category 0..0
* asNeeded[x] 0..0
* quantity[x] 0..0
* orderDetail 0..0