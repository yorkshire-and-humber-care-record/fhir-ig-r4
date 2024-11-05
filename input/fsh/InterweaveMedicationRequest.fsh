Profile: InterweaveMedicationRequest
Parent: UKCore-MedicationRequest
Id: Interweave-MedicationRequest
Description: "Interweave MedicationRequest resource profile - DRAFT."
Title: "InterweaveMedicationRequest"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[Extension-UKCore-MedicationRepeatInformation] MS
* extension[Extension-UKCore-MedicationRepeatInformation].extension[numberOfPrescriptionsIssued] MS
* extension[Extension-UKCore-MedicationRepeatInformation].extension[authorisationExpiryDate] MS
* extension[Extension-UKCore-MedicationRepeatInformation].extension contains 
    Extension-Interweave-MedicationLastIssuedDate named LastIssuedDate 0..1 MS

* identifier.assigner only Reference(Interweave-Organization)

* category 1..1 MS
* category from UKCore-MedicationRequestCategory (required)

* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

* medication[x] from UKCore-MedicationCode (required)

* encounter 0..1 MS
* encounter only Reference(Interweave-Encounter)

* authoredOn 1..1 MS

* requester 0..1 MS
* requester only Reference(Interweave-Practitioner or Interweave-Organization or Interweave-PractitionerRole)

* performerType from http://hl7.org/fhir/ValueSet/performer-role (preferred)

* courseOfTherapyType 1..1 MS
* courseOfTherapyType from Interweave-MedicationRequestCourseOfTherapyType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(courseOfTherapyType)

* note 0..* MS
* note ^short = "Extra information about the prescription that could not be conveyed by the other attributes."

* reasonCode 0..* MS
* reasonCode from http://hl7.org/fhir/ValueSet/condition-code (preferred)


* statusReason MS
* statusReason from Interweave-MedicationRequestStatusReason (preferred)

* insert Ruleset-CodingWithSystemCodeDisplay(dosageInstruction.site)
* insert Ruleset-CodingWithSystemCodeDisplay(dosageInstruction.route)
* insert Ruleset-CodingWithSystemCodeDisplay(dosageInstruction.method)

* dosageInstruction 1..1 MS
* dosageInstruction.text 1..1 MS
* dosageInstruction.text ^short = "Complete dosage instructions as text."
* dosageInstruction.patientInstruction 1..1 MS
* dosageInstruction.patientInstruction ^short = "Patient or consumer oriented instructions e.g. RHS of prescription label."


* dispenseRequest.validityPeriod 1..1 MS
* dispenseRequest.expectedSupplyDuration 0..1 MS
* dispenseRequest.expectedSupplyDuration.code 1..1 MS
* dispenseRequest.expectedSupplyDuration.code = #d (exactly)
* dispenseRequest.expectedSupplyDuration.system MS
* dispenseRequest.expectedSupplyDuration.value MS
* dispenseRequest.expectedSupplyDuration.value ^short = "The number of days supply."
* dispenseRequest.expectedSupplyDuration.unit 1..1 MS
* dispenseRequest.expectedSupplyDuration.unit = "day" (exactly)
///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////


* identifier.id 0..0
* identifier.extension 0..0
* extension[Extension-UKCore-MedicationRepeatInformation].id 0..0
* extension[Extension-UKCore-MedicationRepeatInformation].extension[numberOfPrescriptionsIssued].id 0..0
* extension[Extension-UKCore-MedicationRepeatInformation].extension[authorisationExpiryDate].id 0..0
* extension[Extension-UKCore-MedicationRepeatInformation].extension[numberOfPrescriptionsIssued].extension 0..0
* extension[Extension-UKCore-MedicationRepeatInformation].extension[authorisationExpiryDate].extension 0..0
* priority 0..0
* insurance 0..0
* priorPrescription 0..0
* detectedIssue 0..0
* eventHistory 0..0
* supportingInformation 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* courseOfTherapyType.id 0..0
* courseOfTherapyType.extension 0..0
* courseOfTherapyType.coding.id 0..0
* courseOfTherapyType.coding.extension 0..0
* groupIdentifier 0..0
* doNotPerform 0..0
* subject.id 0..0
* subject.extension 0..0
* dosageInstruction.id 0..0
* dosageInstruction.extension 0..0
* dosageInstruction.doseAndRate.id 0..0
* dosageInstruction.doseAndRate.extension 0..0
* dosageInstruction.site.id 0..0
* dosageInstruction.site.extension 0..0
* dosageInstruction.route.id 0..0
* dosageInstruction.route.extension 0..0
* dosageInstruction.method.id 0..0
* dosageInstruction.method.extension 0..0
* dosageInstruction.site.coding.id 0..0
* dosageInstruction.site.coding.extension 0..0
* dosageInstruction.route.coding.id 0..0
* dosageInstruction.route.coding.extension 0..0
* dosageInstruction.method.coding.id 0..0
* dosageInstruction.method.coding.extension 0..0
* dispenseRequest.id 0..0
* dispenseRequest.extension 0..0
* dispenseRequest.initialFill.id 0..0
* dispenseRequest.initialFill.extension 0..0
* dispenseRequest.expectedSupplyDuration.id 0..0
* dispenseRequest.expectedSupplyDuration.extension 0..0
* substitution.id 0..0
* substitution.extension 0..0