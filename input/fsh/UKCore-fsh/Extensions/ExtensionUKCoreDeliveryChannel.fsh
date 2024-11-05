//Alias: $UKCore-DeliveryChannel = https://fhir.hl7.org.uk/ValueSet/UKCore-DeliveryChannel

Extension: ExtensionUKCoreDeliveryChannel
Id: Extension-UKCore-DeliveryChannel
Title: "Extension UK Core Delivery Channel"
Description: "This describes the delivery channel of a scheduled appointment."
Context: Appointment, Slot
* ^version = "2.1.0"
* ^date = "2024-06-28"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Appointment and Slot resources to support the exchange of information describing the delivery channel of a scheduled appointment."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "An extension to record the delivery channel of a scheduled Appointment"
* . ^definition = "An extension to record the delivery channel of a scheduled Appointment."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from UKCore-DeliveryChannel (extensible)
* value[x] ^short = "A code that identifies the delivery channel of an appointment"
* value[x] ^definition = "A code that identifies the delivery channel of an appointment."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DeliveryChannel"