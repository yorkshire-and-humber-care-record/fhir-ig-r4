Profile: InterweaveCondition
Parent: UKCore-Condition
Id: Interweave-Condition
Description: "Interweave Condition resource profile - DRAFT."
Title: "InterweaveCondition"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[Extension-UKCore-ConditionEpisode] ^short = "DISCOURAGED"

// Identifier: (MS)
// This is a business identifier for the Condition.
// The value for a local identifier must be populated and contain the internal id for this Condition on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(condition)
* identifier[localIdentifier].assigner only Reference(Interweave-Organization)

// Clinical Status: (Mandatory)
//  Essential to explain the status of the condition – eg is it currently active.
* clinicalStatus 1..1 MS

// Category (optional)
// This field provides an opportunity to classify a Condition as either “Encounter Diagnosis” or “Problem List Item”.
// This basic FHIR list doesn't seem much point, but UKCore adds some more values which makes it look a bit more useful
// So optional
* category 0..* MS
//* category from https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCategory (required)
* category from UKCore-ConditionCategory (required)

// Code (mandatory)
//  Essential to provide to describe what the condition actually is.
//  We pre-adopt the UKCore code list - which extends the standard FHIR list by adding codes for social care and A&E
* code 1..1 MS
* code from UKCore-ConditionCode (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(code)

// Body Site: (MS)
//     Snomed coding for the affected body part. Important to provide if possible and relevant
//     (Note that it could be a list)
* bodySite MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (required)
* insert Ruleset-CodingWithSystemCodeDisplay(bodySite)


// Subject: Is already mandatory. Essential reference to the patient (only)
* subject MS 
//   We only want Patients - not Groups
* subject only Reference(Interweave-Patient)
* subject ^short = "Who has the condition? (A patient, NOT group)"
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

// Context: (MS)
//   Will not be relevant to all Conditions (eg historical lists), 
//   but should be populated if there is a relevant Encounter to link the Condition to.
* encounter MS
* encounter only Reference(Interweave-Encounter)
* insert Ruleset-ReferenceWithReferenceOnly(encounter)

// Onset and Abatement: (MS)
//   Important to provide if at all possible –
//   For Onset the only reason for not providing would be if the onset is genuinely not known (eg a long-standing historical condition)
//   For Abatement then obviously only relevant if it IS in abatment
//   There are a number of choices - date, age, etc. They all seem relevant, in which case assumption must be that a consumer can display all
//   To consider... do we need a timeline date?
* onset[x] only dateTime
* onset[x] 0..1 

// Recorded Date: (Mandatory)
//   Vital information about when the condition was noted. 
//   Provides essential guidance for a viewer about the recency and thus likely relevance / accuracy of historical records
* recordedDate 1..1 MS   


// Asserter: (MS)
//   Required to populate if known.
//   Povides details of a Practitioner who can give more information about the condition. 
//   Could maybe also be the patient etc - perhaps more discussion about the implications of this?
//   Useful to say that if not provided then an unknown Practitioner may be assumed
* asserter MS
* asserter.id 0..0
* insert Ruleset-ReferenceWithReferenceAndDisplay(asserter)

* recorder 0..0

// Stage: (Optional)
//    Clearly not applicable to all conditions, but useful where it is applicable (eg cancer)
//    Possibly worth further discussion, to see if/how used and if there is call for further specification of a consistent approach?
* stage.id 0..0
* stage.summary 1..1 MS
* stage.summary from http://hl7.org/fhir/ValueSet/condition-stage (required)
* stage.assessment only Reference (DiagnosticReport or Observation)

// Evidence (Optional)
//    To some extent duplicates the “code”, but may optionally provide further information about what led to this code being assigned
//    Do not want "detail" pointer to any other resource, as difficult for a consumer to display. (Discuss use-case and specify first)
* evidence.id 0..0
* evidence.detail 0..0
* evidence.code MS
* evidence.code from http://hl7.org/fhir/ValueSet/manifestation-or-symptom (preferred)

// Note (Optional)
* note ^short = "Additional information about the Condition. NB: Any notes may be shared widely across the region, including being viewed by the patient themselves"

* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* code.id 0..0
* code.extension 0..0
* bodySite.id 0..0
* bodySite.extension 0..0
* subject.id 0..0
* subject.extension 0..0
* encounter.id 0..0
* encounter.extension 0..0
* asserter.extension 0..0
* stage.extension 0..0
* evidence.extension 0..0

////////////////////////////////////////////////////////////////////////////////////////
// Examples
////////////////////////////////////////////////////////////////////////////////////////