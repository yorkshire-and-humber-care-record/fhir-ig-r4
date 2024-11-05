Alias: $SCT = http://snomed.info/sct

Profile: InterweavePractitionerRole
Parent: UKCore-PractitionerRole
Id: Interweave-PractitionerRole
Description: "Interweave Practitioner role resource profile - DRAFT."
Title: "InterweavePractitionerRole"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// EXTENSIONS
///////////////////////////////////////

//Service Type: A list of types of service for the appointment eg "Cardiology Service", “School Nursing Service" etc
//Appears to be possible, useful and important to populate. (Could be multiple??)
* extension contains Extension-Interweave-ServiceType named serviceType 0..*
* extension[Extension-Interweave-ServiceType] ^short = "The services which the practitioner can offer."
* extension[Extension-Interweave-ServiceType] MS

* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.assigner only Reference(Interweave-Organization)

* active 1..1 MS
* active ^short = "Whether this practitioner's “role” record is in active use."

* period 0..1 MS
* period ^short = "The period during which the practitioner is authorized to perform in these role(s)."

// code is used to record the roles which a practitioner is authorised to perform.
//We treat this as the preferred field to populate. However, with prior authorisation, we will accept other code sets which represent the role.  
* code 1..* MS
// * code.id 0..0
// * code.extension 0..0
// * code.coding.id 0..0
// * code.coding.extension 0..0
// * code.coding.version 0..0
* code from http://hl7.org/fhir/ValueSet/practitioner-role (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(code)
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code contains 
    SDSJobRoleName 0..1 MS
* code[SDSJobRoleName].id 0..0
* code[SDSJobRoleName].extension 0..0
* code[SDSJobRoleName] from Interweave-SDSJobRoleName
* code[SDSJobRoleName] ^binding.strength = #preferred
* code[SDSJobRoleName].coding.id ..0
* code[SDSJobRoleName].coding.extension ..0
* code[SDSJobRoleName].coding.system 1..
* code[SDSJobRoleName].coding.system = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-SDSJobRoleName" (exactly)
* code[SDSJobRoleName].coding.version ..0
* code[SDSJobRoleName].coding.code 1..
* code[SDSJobRoleName].coding.display 1..


* practitioner 1..1 MS
* practitioner only Reference(Interweave-Practitioner)
* insert Ruleset-ReferenceWithReferenceAndDisplay(practitioner)
* practitioner ^short = "The practitioner that is able to provide the defined services for the organisation."

* organization 0..1 MS
* organization only Reference(Interweave-Organization)
* insert Ruleset-ReferenceWithReferenceAndDisplay(organization)
* organization ^short = "The organization where the Practitioner performs the roles associated."

* location 0..*
* location only Reference(Interweave-Location)
* insert Ruleset-ReferenceWithReferenceOnly(location)
* location ^short = "The location(s) at which this practitioner provides care."

* specialty MS
* specialty from UKCore-PracticeSettingCode (required)
* insert Ruleset-CodingWithSystemCodeDisplay(specialty)

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////
* healthcareService 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0
* identifier.id 0..0
* identifier.extension 0..0
* practitioner.id 0..0
* practitioner.extension 0..0
* practitioner.type 0..0
* organization.id 0..0
* organization.extension 0..0
* organization.type 0..0
* specialty.id 0..0
* specialty.extension 0..0
* specialty.coding.id 0..0
* specialty.coding.extension 0..0
* location.id 0..0
* location.extension 0..0
* location.type 0..0