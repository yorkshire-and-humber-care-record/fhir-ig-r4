Profile: InterweaveSocialCareAssessment
Parent: Task
Id: Interweave-SocialCareAssessment
Description: "Interweave SocialCare Assessment resource profile (modelled using FHIR Task) - DRAFT."
Title: "InterweaveSocialCareAssessment"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// --- EXTENSIONS ---
///////////////////////////////////////

* extension contains Extension-Interweave-SocialCareAssessmentOutcome named outcome 0..* MS
* extension[Extension-Interweave-SocialCareAssessmentOutcome] ^short = "The outcome of the assessment."

* extension contains Extension-Interweave-SocialCareAssessmentPerformer named performer 0..1 MS
* extension[Extension-Interweave-SocialCareAssessmentPerformer] ^short = "The practitioner performing the assessment."

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////
* status 1..1 MS
* status from InterweaveSocialCareAssessmentStatus (required)
* status ^short = "A mandatory flag to indicate the status of the assessment."

* code 1..1 MS
* code from InterweaveSocialCareAssessmentType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(code)
* code.text 1..1 MS
* code ^short = "The type of assessment."

* intent 1..1 MS
* intent = #plan (exactly)
* intent ^short = "Not relevant to Social Care but is mandated by FHIR therefore we default to Plan"

// Every assessment MUST be linked to a patient
* for 1..1 MS 
// Ensure we only have patients referenced here
* for only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(for)
* for ^short = "The person which is subject of the assessment."

* authoredOn 1..1 MS
* authoredOn ^short = "The date that the assessment was first entered in to the source system."

* lastModified 1..1 MS
* lastModified ^short = "The date that the assessment was last updated."

* owner 1..1 MS
* owner only Reference(Interweave-Organization)
* owner ^short = "A reference to the Organizational team which is performing the assessment."

///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////

//TODO: limit basedOn to only ref a contact or referral request.
* basedOn 0..1 MS
* basedOn only Reference(Interweave-SocialCareAssessment or Interweave-SocialCareContact)
* basedOn ^short = "The assessment (task resource) or contact (referral request resource) which triggered this assesment."

* executionPeriod 0..1 MS
* executionPeriod.start ^short = "The date/time that the assessment commenced (Or is due to commence should the assessment be in a planned status)"
* executionPeriod.end ^short = "The date/time that the assessment completed."

///////////////////////////////////////
// --- OPTIONAL FIELDS ---
///////////////////////////////////////
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierOptional(socialcareassessment)

* description ^short = "An additional description of the assessment over and above the name."

* encounter only Reference (Interweave-Encounter)
* encounter ^short = "Optional link to an Encounter resource which maybe associated with the assessment"

* output.value[x] only Reference(Interweave-DocumentReference)
* output.type from InterweaveSocialCareAssessmentOutputType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(output.type)
* output.type.coding.system = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-SocialCareAssessmentOutputType" (exactly)
* output.type.coding.code = #DOC (exactly)
* output.type.coding.display = "DocumentReference" (exactly)

///////////////////////////////////////
// --- Discouraged fields ---
///////////////////////////////////////

//None


///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////
* groupIdentifier 0..0
* partOf 0..0
* statusReason 0..0
* businessStatus 0..0
* priority 0..0
* focus 0..0
* requester 0..0
* performerType 0..0
* note 0..0
* relevantHistory 0..0
* restriction 0..0
* input 0..0
* location 0..0
* reasonCode 0..0 
* reasonReference 0..0
* insurance 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0

* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0

* code.id 0..0
* code.extension 0..0
* code.coding.id 0..0
* code.coding.extension 0..0

* for.id 0..0
* for.extension 0..0

* executionPeriod.id 0..0
* executionPeriod.extension 0..0

* output.id 0..0
* output.extension 0..0
* output.type.id 0..0
* output.type.extension 0..0
* output.type.coding.id 0..0
* output.type.coding.extension 0..0