Alias: $ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

ValueSet: InterweaveAppointmentParticipantType
Id: Interweave-AppointmentParticipationType
Title: "InterweaveAppointmentParticipantType"
Description: "This value set defines a set of codes that can be used to indicate how an individual participates in an appointment."
* ^name = "InterweaveAppointmentParticipantType"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* include codes from valueset http://hl7.org/fhir/ValueSet/encounter-participant-type

// And now add the codes for "Subject" and "Location"
// These are also useful for an Appointment, where the "participant" field is very overloaded
* $ParticipationType#LOC
* $ParticipationType#SBJ