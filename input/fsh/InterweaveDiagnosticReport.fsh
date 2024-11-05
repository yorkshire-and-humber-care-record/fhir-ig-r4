Profile: InterweaveDiagnosticReport
Parent: UKCore-DiagnosticReport
Id: Interweave-DiagnosticReport
Description: "Interweave DiagnosticReport resource profile - DRAFT."
Title: "InterweaveDiagnosticReport"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[compositionReferenceR5] 0..0

// Identifier: (MS)
// This is a business identifier for the Diagnostic Report.
// The value for a local identifier must be populated and contain the internal id for this Diagnostic Report on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(diagnosticReport)
* identifier[localIdentifier].assigner only Reference(Interweave-Organization)

* basedOn only Reference(Interweave-CarePlan or Interweave-MedicationRequest or Interweave-ServiceRequest)

// Category - make this mandatory and enforce the code list.
//  Seems to be a simple and useful categorisation - not hard to map to and useful for searching
* category 1..1 MS
* category from http://hl7.org/fhir/ValueSet/diagnostic-service-sections (required)
* insert Ruleset-CodingWithSystemCodeDisplay(category)

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "coding.system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains
    snomedCT 0..1 and
    nicip 0..1 and
    loinc 0..1

* code.coding[snomedCT].system 1..1 MS
* code.coding[snomedCT].system = "http://snomed.info/sct" (exactly)
* code.coding[snomedCT].code 1..1 MS
* code.coding[snomedCT].code from UKCore-ReportCode
* code.coding[snomedCT].code ^short = "SNOMED CT Clinical Procedure Report code"
* code.coding[snomedCT].display 1..1 MS

* code.coding[nicip].system 1..1 MS
* code.coding[nicip].system = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-NICIP" (exactly)
* code.coding[nicip].code 1..1 MS
* code.coding[nicip].code from Interweave-NICIP
* code.coding[nicip].code ^short = "National Interim Clinical Imaging Procedure code"
* code.coding[nicip].display 1..1 MS

* code.coding[loinc].system 1..1 MS
* code.coding[loinc].system = "http://loinc.org" (exactly)
* code.coding[loinc].code 1..1 MS
* code.coding[loinc].code from 	http://hl7.org/fhir/ValueSet/report-codes
* code.coding[loinc].code ^short = "LOINC code"
* code.coding[loinc].display 1..1 MS

* subject 1..1 MS
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

//   Link to the Encounter which led to this diagnostic report. Very useful to provide if relevant and have it
* encounter MS
* encounter only Reference(Interweave-Encounter)
* insert Ruleset-ReferenceWithReferenceOnly(encounter)

// Effective and Issued dates
//   As-per the FHIR spec there are two dates with slighlty different purposes
//   Both seem to be commonly populated - issued date is mandatory, and effective date MS
* effective[x] 0..1 MS
* issued 1..1 MS

* insert Ruleset-ReferenceWithReferenceOnly(result)

* resultsInterpreter 0..0
// Imaging Study (Discouraged)
//   There are other PACS solutions available - we are anticipating primarily sharing reports, not raw images
//   (As of this writing would need development to make the link even work)
* imagingStudy ^short = "DISCOURAGED: Intention is primarily to share reports and results, not raw images. Will be ignored if populated."
* media ^short = "DISCOURAGED: Intention is primarily to share reports and results, not raw images. Will be ignored if populated."

* insert Ruleset-CodingWithSystemCodeDisplay(conclusionCode)

// Presented Form (MS)
//    The actual report text
//    A few things to think about here - eg supported MIME types and use of embedded vs links
//      - links seem a good idea, but would need some more development to get working
//      - a particular issue is text extracted from old RIS / Lab systems which contains escape characters
//            (Ideally would be converted into HTML?)
* presentedForm MS
* presentedForm.contentType 1..1 MS

* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* category.id 0..0
* category.extension 0..0
* category.coding.id 0..0
* category.coding.extension 0..0
* code.id 0..0
* code.extension 0..0
* code.coding.id 0..0
* code.coding.extension 0..0
* code.coding[snomedCT].id 0..0
* code.coding[snomedCT].extension 0..0
* code.coding[nicip].id 0..0
* code.coding[nicip].extension 0..0
* code.coding[loinc].id 0..0
* code.coding[loinc].extension 0..0
* subject.id 0..0
* subject.extension 0..0
* encounter.id 0..0
* encounter.extension 0..0
* performer.id 0..0
* resultsInterpreter.id 0..0
* result.id 0..0
* result.extension 0..0
* media.id 0..0
* media.extension 0..0
* conclusionCode.id 0..0
* conclusionCode.extension 0..0
* conclusionCode.coding.id 0..0
* conclusionCode.coding.extension 0..0
//* presentedForm.coding.id 0..0
//* presentedForm.coding.extension 0..0
* presentedForm.id 0..0
* presentedForm.extension 0..0