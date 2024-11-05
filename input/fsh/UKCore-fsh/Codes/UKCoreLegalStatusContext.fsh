Alias: $UKCore-LegalStatusContext = https://fhir.hl7.org.uk/CodeSystem/UKCore-LegalStatusContext

ValueSet: UKCoreLegalStatusContext
Id: UKCore-LegalStatusContext
Title: "UK Core Legal Status Context"
Description: "A set of codes that define the context in which a mental health legal status is being used."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-07"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License.  You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "dbfa87bc-78e2-4d76-8753-571ed1a3c9bf"
* ^expansion.timestamp = "2022-01-07T13:33:42+00:00"
* ^expansion.total = 2
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-LegalStatusContext|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-LegalStatusContext"
* ^expansion.contains[=].code = #admission
* ^expansion.contains[=].display = "Admission"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-LegalStatusContext"
* ^expansion.contains[=].code = #discharge
* ^expansion.contains[=].display = "Discharge"
* include codes from system $UKCore-LegalStatusContext

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-LegalStatusContext"