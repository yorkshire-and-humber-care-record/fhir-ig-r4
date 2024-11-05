Profile: InterweaveQuestionnaireResponse
Parent: QuestionnaireResponse
Id: Interweave-QuestionnaireResponse
Description: "Interweave QuestionnaireResponse resource profile - DRAFT."
Title: "InterweaveQuestionnaireResponse"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////

// restricting the required values by removing 'in-progress' and 'stopped'
//https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Constraining.20Required.20value.20sets

* status 1..1 MS 
* status from InterweaveQuestionnaireResponseStatus (required)
* status ^short = "completed | amended | entered-in-error"

* subject 1..1 MS 
// We only want Patients - not Groups
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

* authored 1..1 MS
* author 1..1 MS
///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////
// Context: (MS)
//   A reference to the Encounter for which the response of the questionnaire has been received.
//   This is likely to be very useful and should be provided if at all possible.
* encounter MS
* encounter only Reference(Interweave-Encounter)
* insert Ruleset-ReferenceWithReferenceOnly(encounter)

* item MS
* item.text 1..1 MS

///////////////////////////////////////
// --- OPTIONAL FIELDS ---
///////////////////////////////////////

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////


///////////////////////////////////////
// --- Discouraged fields ---
///////////////////////////////////////

* partOf ^short = "DISCOURAGED. - A procedure or observation that this questionnaire was performed as part of the execution of."

* subject.id 0..0
* subject.extension 0..0
* encounter.id 0..0
* encounter.extension 0..0