ValueSet: InterweaveAppointmentType
Id: Interweave-AppointmentType
Description: "Appointment Type codes"
* ^name = "InterweaveAppointmentType"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

// Include the standard HL7 codes
//* include codes from valueset http://hl7.org/fhir/ValueSet/v2-0276
* include codes from valueset https://fhir.hl7.org.uk/ValueSet/UKCore-AppointmentReasonCode
// And add some of our own
* include codes from system Interweave-AppointmentType



CodeSystem: InterweaveAppointmentType
Id: Interweave-AppointmentType
Description: "Additional Appointment Type codes"
* ^name = "InterweaveAppointmentType"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-AppointmentType"

* #URGENT "Urgent appointment"