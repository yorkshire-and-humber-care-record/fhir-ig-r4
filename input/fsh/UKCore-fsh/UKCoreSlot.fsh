Alias: $Extension-UKCore-DeliveryChannel = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DeliveryChannel

Profile: UKCoreSlot
Parent: Slot
Id: UKCore-Slot
Title: "UK Core Slot"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Slot](https://hl7.org/fhir/R4/Slot.html)."
* ^version = "1.3.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "Slot resources are used to provide time-slots that can be booked using an appointment. They do not provide any information about appointments that are available, just the time, and optionally what the time can be used for. These are effectively spaces of free/busy time.\r\nSlots can also be marked as busy without having appointments associated."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains $Extension-UKCore-DeliveryChannel named deliveryChannel 0..1
* extension[deliveryChannel] ^short = "This describes the delivery channel of a scheduled appointment."
* extension[deliveryChannel] ^isModifier = false
* specialty MS
* specialty from UKCore-PracticeSettingCode (extensible)
* specialty ^short = "The specialty of a practitioner that would be required to perform the service requested in this appointment."
* appointmentType MS
* appointmentType ^short = "The style of appointment or patient that may be booked in the slot."
* schedule MS
* schedule ^short = "A reference to the Schedule that this Slot is an interval of."
* status MS
* status ^short = "The status of the slot, e.g free, busy, etc."
* start MS
* start ^short = "Date/Time that the slot is to begin."
* end MS
* end ^short = "Date/Time that the slot is to conclude."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Slot"