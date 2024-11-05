Alias: $medication-admin-category = http://terminology.hl7.org/CodeSystem/medication-admin-category
Alias: $UKCore-MedicationAdministrationCategory = https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationAdministrationCategory

ValueSet: UKCoreMedicationAdministrationCategory
Id: UKCore-MedicationAdministrationCategory
Title: "UK Core Medication Administration Category"
Description: "A set of codes to define a category for a medication administration."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-12-16"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "242c10eb-0ecc-47b2-9f97-78e80577a16f"
* ^expansion.timestamp = "2022-12-12T09:57:59+00:00"
* ^expansion.total = 4
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "http://terminology.hl7.org/CodeSystem/medication-admin-category|4.0.1"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationAdministrationCategory|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "http://terminology.hl7.org/CodeSystem/medication-admin-category"
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #inpatient
* ^expansion.contains[=].display = "Inpatient"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medication-admin-category"
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #outpatient
* ^expansion.contains[=].display = "Outpatient"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medication-admin-category"
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #community
* ^expansion.contains[=].display = "Community"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationAdministrationCategory"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #discharge
* ^expansion.contains[=].display = "Discharge"
* $medication-admin-category#inpatient "Inpatient"
* $medication-admin-category#outpatient "Outpatient"
* $medication-admin-category#community "Community"
* $UKCore-MedicationAdministrationCategory#discharge "Discharge"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationAdministrationCategory"