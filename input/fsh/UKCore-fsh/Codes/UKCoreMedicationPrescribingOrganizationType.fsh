Alias: $UKCore-MedicationPrescribingOrganizationType = https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationPrescribingOrganizationType

ValueSet: UKCoreMedicationPrescribingOrganizationType
Id: UKCore-MedicationPrescribingOrganizationType
Title: "UK Core Medication Prescribing Organization Type"
Description: "A set of codes that define the type of organisation responsible for authorising and issuing a medication."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-08-26"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "61e31258-4a1e-4ba1-b201-77a18d7be65a"
* ^expansion.timestamp = "2022-10-20T16:10:20+00:00"
* ^expansion.total = 2
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationPrescribingOrganizationType|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationPrescribingOrganizationType"
* ^expansion.contains[=].code = #prescribed-at-gp-practice
* ^expansion.contains[=].display = "Prescribed at GP practice"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationPrescribingOrganizationType"
* ^expansion.contains[=].code = #prescribed-by-another-organisation
* ^expansion.contains[=].display = "Prescribed by another organisation"
* include codes from system $UKCore-MedicationPrescribingOrganizationType

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationPrescribingOrganizationType"