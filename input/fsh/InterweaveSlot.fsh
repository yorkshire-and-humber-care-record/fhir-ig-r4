Profile: InterweaveSlot
Parent: UKCore-Slot
Id: Interweave-Slot
Description: "Interweave Slot resource profile - DRAFT."
Title: "InterweaveSlot"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields
///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////

* identifier 1..1 MS
* identifier.assigner only Reference(Interweave-Organization)

// Service Type: A list of types of service for the appointment eg "Cardiology Service", “School Nursing Service" etc
//    Appears to be possible, useful and important to populate. (Could be multiple??)
//    We also want to pre-adopt this value set from UK Core which is better than the original FHIR suggestion
//    (More relevant to UK and better coverage of social care)
//    It is based on SNOMED refset 1127531000000102: Services Simple Reference Set
* serviceType 1..* MS
* serviceType from UKCore-CareSettingType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(serviceType)

* schedule only Reference(Interweave-Schedule)

///////////////////////////////////////
// --- MUST SUPPORT FIELDS ---
///////////////////////////////////////
// Delivery Channel (MS) - a useful and simple selection from “in-person”, “telephone”, “video”
* extension[Extension-UKCore-DeliveryChannel] MS

// Appointment Type: MS and tighten the list. A simple list of “Routine”, “Emergency”, etc
// Move to our own list which adds "Urgent"
* appointmentType MS
* appointmentType from Interweave-AppointmentType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(appointmentType)

* overbooked MS 
* overbooked ^short = "if this slot has already been overbooked, appointments are unlikely to be accepted for this time. Default value of 'false' is assumed."

///////////////////////////////////////
// --- OPTIONAL FIELDS ---
///////////////////////////////////////

// Service Category: In FHIR this is a short list of broad categories at a higher-level then Service Type
* serviceCategory 0..1
* serviceCategory from http://hl7.org/fhir/ValueSet/service-category (preferred)

* specialty from https://fhir.hl7.org.uk/ValueSet/UKCore-PracticeSettingCode (required)
* insert Ruleset-CodingWithSystemCodeDisplay(specialty)

* identifier.id 0..0
* identifier.extension 0..0

* serviceType.id 0..0
* serviceType.extension 0..0
* serviceType.coding.id 0..0
* serviceType.coding.extension 0..0

* specialty.id 0..0
* specialty.extension 0..0
* specialty.coding.id 0..0
* specialty.coding.extension 0..0

* appointmentType.id 0..0
* appointmentType.extension 0..0
* appointmentType.coding.id 0..0
* appointmentType.coding.extension 0..0