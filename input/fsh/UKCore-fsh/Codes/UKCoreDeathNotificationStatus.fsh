Alias: $UKCore-DeathNotificationStatus = https://fhir.hl7.org.uk/CodeSystem/UKCore-DeathNotificationStatus

ValueSet: UKCoreDeathNotificationStatus
Id: UKCore-DeathNotificationStatus
Title: "UK Core Death Notification Status"
Description: "A set of codes that define the type of death notice as held on the Personal Demographics Service (PDS) or any other source system."
* ^version = "2.1.0"
* ^status = #active
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "4c79b32b-2583-4eef-bc95-e4e450bac2f6"
* ^expansion.timestamp = "2021-09-09T14:07:46+00:00"
* ^expansion.total = 3
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DeathNotificationStatus|2.1.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DeathNotificationStatus"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Formal - death notice received from Registrar of Deaths"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DeathNotificationStatus"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Informal - death notice received via an update from a local NHS Organisation such as GP or Trust"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DeathNotificationStatus"
* ^expansion.contains[=].code = #U
* ^expansion.contains[=].display = "Removed"
* include codes from system $UKCore-DeathNotificationStatus

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-DeathNotificationStatus"