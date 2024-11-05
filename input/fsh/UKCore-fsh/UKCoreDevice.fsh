//Alias: $UKCore-DeviceType = https://fhir.hl7.org.uk/ValueSet/UKCore-DeviceType

Profile: UKCoreDevice
Parent: Device
Id: UKCore-Device
Title: "UK Core Device"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Device](https://hl7.org/fhir/R4/Device.html)."
* ^version = "1.2.0"
* ^status = #draft
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "The purpose of this profile is to hold information about a type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device. It is referenced by other resources for recording which device performed an action such as a procedure or an observation, referenced when prescribing and dispensing devices for patient use or for ordering supplies, and used to record and transmit Unique Device Identifier (UDI) information about a device such as a patient's implant."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* status MS
* status ^short = "The status of the Device."
* type MS
* type from UKCore-DeviceType (preferred)
* type ^short = "The type of the Device."
* type ^binding.description = "A code from the SNOMED Clinical Terminology UK coding system that describes a type of device."