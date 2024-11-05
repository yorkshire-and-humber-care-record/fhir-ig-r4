Alias: $UKCore-OutcomeOfAttendanceEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceEngland
Alias: $UKCore-OutcomeOfAttendanceWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceWales

ValueSet: UKCoreOutcomeOfAttendance
Id: UKCore-OutcomeOfAttendance
Title: "UK Core Outcome Of Attendance"
Description: "A set of codes that define the outcome of an out-patient attendance."
* ^version = "2.1.0"
* ^status = #active
* ^date = "2022-01-07"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "837eb867-6d2e-4f47-adf1-2417ebfec7e1"
* ^expansion.timestamp = "2022-01-07T13:50:13+00:00"
* ^expansion.total = 7
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceEngland|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceWales|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Another appointment given"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Appointment to be made at a later date"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Discharged from consultant's care (last attendance)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Referral to Treatment Continuation of Status"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Referral to Treatment Period Start Point"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Referral to Treatment Period Stop Point"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Specialty Not Subject to Referral to Treatment Times Measurement"
* include codes from system $UKCore-OutcomeOfAttendanceEngland
* include codes from system $UKCore-OutcomeOfAttendanceWales

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-OutcomeOfAttendance"