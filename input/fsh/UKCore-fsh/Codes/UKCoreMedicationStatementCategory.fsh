Alias: $medication-statement-category = http://terminology.hl7.org/CodeSystem/medication-statement-category
Alias: $UKCore-MedicationStatementCategory = https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationStatementCategory

ValueSet: UKCoreMedicationStatementCategory
Id: UKCore-MedicationStatementCategory
Title: "UK Core Medication Statement Category"
Description: "A set of codes to define a category for a medication statement."
* ^version = "1.1.0"
* ^status = #active
* ^date = "2022-12-16"
* ^experimental = false
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "3bf5dffe-83c9-42ce-a17c-55137aafdc94"
* ^expansion.timestamp = "2022-12-22T14:44:21+00:00"
* ^expansion.total = 6
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* ^expansion.contains[=].code = #inpatient
* ^expansion.contains[=].display = "Inpatient"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* ^expansion.contains[=].code = #outpatient
* ^expansion.contains[=].display = "Outpatient"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* ^expansion.contains[=].code = #community
* ^expansion.contains[=].display = "Community"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* ^expansion.contains[=].code = #patientspecified
* ^expansion.contains[=].display = "Patient Specified"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationStatementCategory"
* ^expansion.contains[=].code = #discharge
* ^expansion.contains[=].display = "Discharge"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-MedicationStatementCategory"
* ^expansion.contains[=].code = #leave
* ^expansion.contains[=].display = "Leave"
* include codes from system $medication-statement-category
* include codes from system $UKCore-MedicationStatementCategory

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationStatementCategory"