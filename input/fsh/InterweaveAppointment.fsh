Profile: InterweaveAppointment
Parent: UKCore-Appointment
Id: Interweave-Appointment
Description: "Interweave Appointment resource profile - DRAFT."
Title: "InterweaveAppointment"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

// Booking Organisations - difficult to see why this is needed
// - if the organisation making the booking, then see “basedOn”
// - If the organisation taking the booking then see provenance tags

* extension[Extension-UKCore-BookingOrganization] ^short =  "DISCOURAGED - use basedOn or provenance tags instead"

* extension[Extension-UKCore-DeliveryChannel].valueCodeableConcept from UKCore-DeliveryChannel (extensible)

// Identifier:
// This is a business identifier for the Appointment.
// The value for a local identifier must be populated and contain the internal id for this Appointment on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(appointment)

* cancelationReason 0..1 MS
* cancelationReason from http://hl7.org/fhir/ValueSet/appointment-cancellation-reason (preferred)

// Service Category: In FHIR this is a short list of broad categories at a higher-level then Service Type
* serviceCategory from http://hl7.org/fhir/ValueSet/service-category (preferred)
* serviceCategory ^short = "A general description under broad categorisation of the types of services that is to be performed during this appointment."

// Service Type: A list of types of service for the appointment eg "Cardiology Service", “School Nursing Service" etc
//    Appears to be possible, useful and important to populate. (Could be multiple??)
//    We also adopt this value set from UK Core which is better than the original FHIR suggestion
//    (More relevant to UK and better coverage of social care)
//    It is based on SNOMED refset 1127531000000102: Services Simple Reference Set
* serviceType 1..* MS
* serviceType from UKCore-CareSettingType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(serviceType)

// Appointment Type: MS and tighten the list. A simple list of “Routine”, “Emergency”, etc
// Move to our own list which adds "Urgent"
* appointmentType MS
* appointmentType from Interweave-AppointmentType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(appointmentType)

// Supporting Information: Discouraged. A pointer to almost any other information
* supportingInformation ^short = "DISCOURAGED - very broad, and so difficult for a consumer to handle"

* reasonReference only Reference(Condition or Procedure or Observation)
// Description: MS. Useful to populate as a textual summary for displaying
//   (If relevant in addition to time, location, service)
* description MS

// Priority - discouraged
* priority ^short = "DISCOURAGED - More applicable to internal scheduling"

// Slot: 
//* slot ^short = "Relevant to a scheduling system, but less so to a regional shared record"

// Comment - Discouraged. Key point is to use with care, as it may be viewed by the patient
* comment ^short = "DISCOURAGED. It must be assumed that this comment will be widely viewed across the region, including by the patient themselves. See also / instead the 'patientInstruction' field"

// Allow only one "type" per participant. Pick the main one. (Or list the whole participant several times)
// To the normal valueset extend with the standard codes for SBJ (subject) and LOC (location)
* participant.type 1..1 MS
* participant.type from Interweave-AppointmentParticipationType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(participant.type)

// We also need an actor, and FHIR insists on a status. Leave the other bits optional ("required", "period") 
* participant.actor 1..1 MS
* participant.status MS

// Now we can slice it - to specify that we need the Subject, and want the Location and Primary Performer
// (Leave the slicing open to not exclude others in future, but it is these three that we are expecting)
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type.coding.code"
* participant ^slicing.ordered = false
* participant ^slicing.rules = #open
* participant contains
    subject 1..1 MS and
    location 0..1 MS and
    primaryPerformer 0..1 MS

* participant[subject].type.coding.system 1..1
* participant[subject].type.coding.system =  "http://terminology.hl7.org/CodeSystem/v3-ParticipationType" (exactly)
* participant[subject].type.coding.code 1..1
* participant[subject].type.coding.code =  #SBJ (exactly)
* participant[subject].type.coding.display 1..1
* participant[subject].type.coding.display =  "subject" (exactly)
* participant[subject].actor 1..1 MS
* participant[subject].actor only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(participant[subject].actor)

* participant[location].type.coding.system 1..1
* participant[location].type.coding.code 1..1
* participant[location].type.coding.display 1..1
* participant[location].type.coding.system =  "http://terminology.hl7.org/CodeSystem/v3-ParticipationType" (exactly)
* participant[location].type.coding.code =  #LOC (exactly)
* participant[location].type.coding.display =  "location" (exactly)
* participant[location].actor 1..1 MS
* participant[location].actor only Reference(Interweave-Location)
* insert Ruleset-ReferenceWithReferenceAndDisplay(participant[location].actor)

* participant[primaryPerformer].type.coding.system 1..1
* participant[primaryPerformer].type.coding.code 1..1
* participant[primaryPerformer].type.coding.display 1..1
* participant[primaryPerformer].type.coding.system =  "http://terminology.hl7.org/CodeSystem/v3-ParticipationType" (exactly)
* participant[primaryPerformer].type.coding.code =  #PPRF (exactly)
* participant[primaryPerformer].type.coding.display =  "primary performer" (exactly)
* participant[primaryPerformer].actor 1..1 MS
* participant[primaryPerformer].actor only Reference(Interweave-Practitioner)
* insert Ruleset-ReferenceWithReferenceAndDisplay(participant[primaryPerformer].actor)

// RequestedPeriod: Discouraged
* requestedPeriod ^short = "DISCOURAGED - Relevant to a scheduling system, but less so to a regional shared record"

* basedOn 0..* MS
* basedOn only Reference(Interweave-ServiceRequest)

* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* serviceType.id 0..0
* serviceType.extension 0..0
* serviceType.coding.id 0..0
* serviceType.coding.extension 0..0
* appointmentType.id 0..0
* appointmentType.extension 0..0
* appointmentType.coding.id 0..0
* appointmentType.coding.extension 0..0
* participant.id 0..0
* participant.extension 0..0
* participant.type.id 0..0
* participant.type.extension 0..0
* participant.type.coding.id 0..0
* participant.type.coding.extension 0..0
* participant[subject].id 0..0
* participant[subject].extension 0..0
* participant[subject].type.id 0..0
* participant[subject].type.extension 0..0
* participant[subject].type.coding.id 0..0
* participant[subject].type.coding.extension 0..0
* participant[subject].actor.id 0..0
* participant[subject].actor.extension 0..0
* participant[location].id 0..0
* participant[location].extension 0..0
* participant[location].type.id 0..0
* participant[location].type.extension 0..0
* participant[location].type.coding.id 0..0
* participant[location].type.coding.extension 0..0
* participant[location].actor.id 0..0
* participant[location].actor.extension 0..0
* participant[primaryPerformer].id 0..0
* participant[primaryPerformer].extension 0..0
* participant[primaryPerformer].type.id 0..0
* participant[primaryPerformer].type.extension 0..0
* participant[primaryPerformer].type.coding.id 0..0
* participant[primaryPerformer].type.coding.extension 0..0
* participant[primaryPerformer].actor.id 0..0
* participant[primaryPerformer].actor.extension 0..0