Profile: InterweaveSocialCareSupportReason
Parent: UKCore-Condition
Id: Interweave-SocialCareSupportReason
Description: "Interweave SocialCare Support Reason resource profile (modelled using UK Core Condition) - DRAFT."
Title: "InterweaveSocialCareSupportReason"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// --- EXTENSIONS ---
///////////////////////////////////////

//A MS extensiSon for Primary Support Reason, As requested by the Social Care Data Standards working group.
* extension contains Extension-Interweave-SocialCarePrimarySupportReason named primarySupportReason 0..1 MS

* extension contains Extension-Interweave-SocialCareSupportReasonPeriod named supportReasonPeriod 1..1 MS

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////
* clinicalStatus 1..1 MS
* clinicalStatus from InterweaveSocialCareSupportReasonClinicalStatus (required)
* clinicalStatus ^short = "A mandatory flag to indicate whether the support reason is active or not. Valueset restricted to active and inactive only."

* category 1..1 MS
* category ^short = "A categorisation of the reason why a person is receiving support."
* category from InterweaveSocialCareSupportReasonCategory (required)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* code 1..1 MS
* code ^short = "The type of support reason."
* code from InterweaveSocialCareSupportReason (required)
* insert Ruleset-CodingWithSystemCodeDisplay(code)

// Subject: Every Flag MUST be linked to a patient
* subject 1..1 MS 
// Ensure we only have patients referenced here
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)
* subject ^short = "The person which is subject of the support reason."

///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////

///////////////////////////////////////
// --- OPTIONAL FIELDS ---
///////////////////////////////////////
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierOptional(socialcaresupportreason)

// Renamed in R4 to recordedDate from assertedDate
* recordedDate ^short = "Optionally supply the date that the support reason was recognised/diagnosed."

* asserter 0..1
* asserter only Reference(Interweave-Practitioner)
* asserter ^short = "Optionally provide the practitioner who asserted the support reason"

* note ^short = "Can be used to provide further describe the support reason"

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////
* stage 0..0
* stage ^short = "Not relevant to social care."

* severity 0..0
* severity ^short = "Not relevant to social care."

* onset[x] 0..0
* onset[x] ^short = "To avoid confusion with the various dates we create our own. Please use x and see notes above for further detail."

* bodySite 0..0
* bodySite ^short = "Not relevant to social care."

* abatement[x] 0..0
* abatement[x] ^short = "To avoid confusion with the various dates we create our own. Please use x and see notes above for further detail."

* evidence 0..0
* evidence ^short = "Not relevant to social care."

* encounter 0..0
* verificationStatus 0..0
* recorder 0..0
* recorder ^short = "Not relevant to shared care record."

* extension[Extension-UKCore-ConditionEpisode] 0..0
//* code.coding[snomedCT] 0..0