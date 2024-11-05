Alias: $UKCore-PreferredContactMethod = https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod

ValueSet: UKCorePreferredContactMethod
Id: UKCore-PreferredContactMethod
Title: "UK Core Preferred Contact Method"
Description: "A set of codes that define the method by which a person would prefer to be contacted."
* ^version = "2.2.0"
* ^status = #active
* ^date = "2023-10-09"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "4dc72d2e-fcbd-4590-9864-56d0724c62fc"
* ^expansion.timestamp = "2021-09-10T07:33:41+00:00"
* ^expansion.total = 9
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod|2.1.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "E-mail"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Letter"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Minicom (Textphone)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "No Telephone contact"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Sign language"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Telephone"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Telephone contact via proxy"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Visit"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-PreferredContactMethod"
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "SMS"
* include codes from system $UKCore-PreferredContactMethod

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-PreferredContactMethod"