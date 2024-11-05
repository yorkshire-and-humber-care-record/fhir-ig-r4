Alias: $UKCore-AppointmentReasonCode = https://fhir.hl7.org.uk/CodeSystem/UKCore-AppointmentReasonCode

ValueSet: UKCoreAppointmentReasonCode
Id: UKCore-AppointmentReasonCode
Title: "UK Core Appointment Reason Code"
Description: "A set of codes that define an appointment reason."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-05-20"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "7ecbba5a-30ae-4cf6-a822-0ad3ca676b62"
* ^expansion.timestamp = "2022-05-03T14:16:28+00:00"
* ^expansion.total = 6
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AppointmentReasonCode|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://terminology.hl7.org/CodeSystem/v2-0276|2.9"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "http://terminology.hl7.org/CodeSystem/v2-0276"
* ^expansion.contains[=].version = "2.9"
* ^expansion.contains[=].code = #FOLLOWUP
* ^expansion.contains[=].display = "A follow up visit from a previous appointment"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v2-0276"
* ^expansion.contains[=].version = "2.9"
* ^expansion.contains[=].code = #WALKIN
* ^expansion.contains[=].display = "A previously unscheduled walk-in visit"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v2-0276"
* ^expansion.contains[=].version = "2.9"
* ^expansion.contains[=].code = #CHECKUP
* ^expansion.contains[=].display = "A routine check-up, such as an annual physical"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v2-0276"
* ^expansion.contains[=].version = "2.9"
* ^expansion.contains[=].code = #EMERGENCY
* ^expansion.contains[=].display = "Emergency appointment"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v2-0276"
* ^expansion.contains[=].version = "2.9"
* ^expansion.contains[=].code = #ROUTINE
* ^expansion.contains[=].display = "Routine appointment - default if not valued"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AppointmentReasonCode"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #urgent-follow-up
* ^expansion.contains[=].display = "Urgent follow-up"
* include codes from system AppointmentReason
* include codes from system $UKCore-AppointmentReasonCode

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-AppointmentReasonCode"