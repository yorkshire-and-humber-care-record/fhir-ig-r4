Profile: InterweaveHealthcareService
Parent: UKCore-HealthcareService
Id: Interweave-HealthcareService
Title: "InterweaveHealthcareService"
Description: "Interweave HealthcareService resource profile - DRAFT."
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////
* identifier 1..1
* identifier.assigner only Reference(Interweave-Organization)


* active 1..1 MS

// Type: A list of types of service for the appointment eg "Cardiology Service", “School Nursing Service" etc
//    Appears to be possible, useful and important to populate. (Could be multiple??)
//    We also want to pre-adopt this value set from UK Core which is better than the original FHIR suggestion
//    (More relevant to UK and better coverage of social care)
//    It is based on SNOMED refset 1127531000000102: Services Simple Reference Set
* type 1..* MS
* type from UKCore-CareSettingType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(type)

* name 1..1 MS
///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////

* telecom 0..* MS

* coverageArea 0..* MS
* coverageArea only Reference(Interweave-Location)

* providedBy 0..1
* providedBy only Reference(Interweave-Organization)

* appointmentRequired 0..1 MS

* availableTime 0..* MS
// ///////////////////////////////////////
// // --- OPTIONAL FIELDS ---
// ///////////////////////////////////////
// Service Category: In FHIR this is a short list of broad categories at a higher-level then Service Type
* category from http://hl7.org/fhir/ValueSet/service-category (preferred)

* referralMethod from Interweave-ReferralRequestMethod (preferred)

* location only Reference(Interweave-Location)

//* characteristic from InterweaveCodesCharacteristicServiceMode (preferred)

* program from http://hl7.org/fhir/ValueSet/program (preferred)

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////

* extraDetails 0..0
* photo 0..0
* endpoint 0..0
* eligibility 0..0

///////////////////////////////////////
// --- Discouraged fields ---
///////////////////////////////////////
* notAvailable 0..*
* notAvailable ^short = "DISCOURAGED - Not available during this time due to provided reason"

* serviceProvisionCode from http://hl7.org/fhir/ValueSet/service-provision-conditions (preferred)
* serviceProvisionCode ^short = "DISCOURAGED - Conditions under which service is available/offered"

* communication ^short = "DISCOURAGED - The language that this service is offered in."

* identifier.id 0..0
* identifier.extension 0..0
* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0
* eligibility.id 0..0
* eligibility.extension 0..0
* availableTime.id 0..0
* availableTime.extension 0..0
* notAvailable.id 0..0
* notAvailable.extension 0..0

// *************************************************************************************************************************
// EXAMPLES
// *************************************************************************************************************************