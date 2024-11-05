Alias: $Extension-UKCore-BookingOrganization = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-BookingOrganization
Alias: $Extension-UKCore-DeliveryChannel = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DeliveryChannel

Profile: UKCoreAppointment
Parent: Appointment
Id: UKCore-Appointment
Title: "UK Core Appointment"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Appointment](https://hl7.org/fhir/R4/Appointment.html)."
* ^version = "1.3.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows recording of detailed information about a planned meeting that may be in the future or past. The resource only describes a single meeting, a series of repeating visits would require multiple appointment resources to be created for each instance. \r\n\r\n Examples include a scheduled surgery, a follow-up for a clinical visit, a scheduled conference call between clinicians to discuss a case, the reservation of a piece of diagnostic equipment for a particular use, etc. The visit scheduled by an appointment may be in person or remote (by phone, video conference, etc.) All that matters is that the time and usage of one or more individuals, locations and/or pieces of equipment is being fully or partially reserved for a designated period of time."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    $Extension-UKCore-BookingOrganization named bookingOrganization 0..1 and
    $Extension-UKCore-DeliveryChannel named deliveryChannel 0..1
* extension[bookingOrganization] ^short = "A reference to the source Organization of the booked appointment."
* extension[bookingOrganization] ^isModifier = false
* extension[deliveryChannel] ^short = "Defines the delivery channel of a scheduled appointment."
* extension[deliveryChannel] ^isModifier = false
* status MS
* status ^short = "The overall status of the appointment."
* specialty MS
* specialty from UKCore-PracticeSettingCode (extensible)
* specialty ^short = "The specialty of a practitioner that would be required to perform the service requested in this appointment."
* appointmentType MS
* appointmentType from UKCore-AppointmentReasonCode (extensible)
* appointmentType ^short = "The type of appointment or patient that has been booked in the slot."
* appointmentType ^binding.description = "A set of codes that define an appointment reason."
* reasonCode MS
* reasonCode ^short = "The reason for the appointment."
* reasonReference MS
* reasonReference ^short = "A reference to the Observation, Condition, Procedure, or ImmunizationRecommendation that is the reason for the appointment."
* start MS
* start ^short = "The start time of the appointment."
* basedOn MS
* basedOn ^short = "The service request this appointment is allocated to assess."
* participant MS
* participant ^short = "A list of participants involved in the appointment."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Appointment"