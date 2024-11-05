Profile: InterweaveSocialCareEquipmentProvision
Parent: DeviceRequest
Id: Interweave-SocialCareEquipmentProvision
Description: "Interweave Social Care Equipment Provision resource profile (modelled using FHIR DeviceRequest) - DRAFT"
Title: "InterweaveSocialCareEquipmentProvision"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////
* status 1..1 MS
* status from InterweaveSocialCareDeviceRequestStatus (required)
* status ^short = "draft | active | completed | entered-in-error | cancelled"

* intent 1..1 MS
* intent = #order (exactly)
* intent ^short = "Not important to social care, but is mandated by FHIR, so we default to 'order'"

* code[x] only CodeableConcept or Reference
* code[x] MS
* codeCodeableConcept 0..1 MS
* codeCodeableConcept from InterweaveSocialCareEquipmentType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(codeCodeableConcept)
* codeReference 0..1 MS
* codeReference only Reference(Device)

// Subject: Every Device Request MUST be linked to a patient
* subject 1..1 MS 
// We only want Patients
* subject only Reference(Interweave-Patient)
// Patient reference must be provided, with reference and display populated
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)
* subject ^short = "The person to which the equipment is assigned."

* authoredOn 1..1 MS 
* authoredOn ^short = "The date that the request was created, this may be the same as the occurrence.period.start, if the equipment is placed without prior request."

///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////

* occurrence[x] MS
* occurrence[x] only Period 
* occurrence[x].start MS
* occurrence[x].end MS
* occurrence[x] ^short = "The period during which the equipment was placed with the person."

* note MS
* note ^short = "Most equipment will be where the patient lives or on the person, where this is not the case, the notes field can be used to detail exceptions."


///////////////////////////////////////
// --- Other fields ---
///////////////////////////////////////

// Optional local id

* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierOptional(socialcareequipmentrequest)

* reasonCode from http://hl7.org/fhir/ValueSet/condition-code (preferred)

///////////////////////////////////////
// --- Discouraged fields ---
///////////////////////////////////////

//Currently none


///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////

* basedOn 0..0
* priorRequest 0..0
* groupIdentifier 0..0
* priority  0..0
* encounter 0..0
* performerType 0..0
* priorRequest 0..0
* reasonReference 0..0
* supportingInfo 0..0
* relevantHistory 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* parameter 0..0
* insurance 0..0

* subject.id 0..0
* subject.extension 0..0
* subject.type 0..0
* occurrence[x].id 0..0