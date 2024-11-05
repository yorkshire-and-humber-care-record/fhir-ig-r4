Alias: $UKCore-FundingCategory = https://fhir.hl7.org.uk/CodeSystem/UKCore-FundingCategory

ValueSet: UKCoreFundingCategory
Id: UKCore-FundingCategory
Title: "UK Core Funding Category"
Description: "A set of codes that define the funding category."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-04-28"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "c2047257-9de9-45c5-b0cb-38a6d478fcfa"
* ^expansion.timestamp = "2023-04-28T09:15:53+00:00"
* ^expansion.total = 3
* ^expansion.offset = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-FundingCategory"
* ^expansion.contains[=].code = #nhs
* ^expansion.contains[=].display = "NHS"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-FundingCategory"
* ^expansion.contains[=].code = #private
* ^expansion.contains[=].display = "Private"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-FundingCategory"
* ^expansion.contains[=].code = #devolved-nations
* ^expansion.contains[=].display = "Devolved nations"
* include codes from system $UKCore-FundingCategory

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-FundingCategory"