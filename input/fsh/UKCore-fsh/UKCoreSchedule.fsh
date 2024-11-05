//Alias: $UKCore-PracticeSettingCode = https://fhir.hl7.org.uk/ValueSet/UKCore-PracticeSettingCode

Profile: UKCoreSchedule
Parent: Schedule
Id: UKCore-Schedule
Title: "UK Core Schedule"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Schedule](https://hl7.org/fhir/R4/Schedule.html)."
* ^version = "1.3.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "Schedule resources provide a container for time-slots that can be booked using an appointment. It provides the window of time (period) that slots are defined for and what type of appointments can be booked.\r\n\r\nThe schedule does not provide any information about actual appointments. This separation greatly assists where access to the appointments would not be permitted for security or privacy reasons, while still being able to determine if an appointment might be available."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* active MS
* active ^short = "Whether this schedule is in active use."
* specialty MS
* specialty from UKCore-PracticeSettingCode (extensible)
* specialty ^short = "Type of specialty needed."
* actor MS
* actor ^short = "Resource(s) that availability information is being provided for."
* planningHorizon MS
* planningHorizon ^short = "Period of time covered by schedule."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Schedule"