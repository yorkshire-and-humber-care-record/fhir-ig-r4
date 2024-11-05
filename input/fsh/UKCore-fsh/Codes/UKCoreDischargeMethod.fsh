Alias: $UKCore-DischargeMethodEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland
Alias: $UKCore-DischargeMethodWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodWales

ValueSet: UKCoreDischargeMethod
Id: UKCore-DischargeMethod
Title: "UK Core Discharge Method"
Description: "A set of codes that define the method of discharge from a hospital provider spell."
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
* ^expansion.identifier = "ea46e5cb-e35c-4625-b792-905c85b85397"
* ^expansion.timestamp = "2022-01-07T12:50:27+00:00"
* ^expansion.total = 14
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodWales|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Method of discharge not known"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Not applicable (Hospital Provider Spell not finished at episode end (i.e. not discharged) or current episode unfinished)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Not applicable - hospital provider spell not yet finished (i.e. not discharged)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Patient died"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Patient died"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Patient discharged by a relative or advocate"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Patient discharged by Mental Health Review Tribunal (MHRT), Home Secretary or court"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Patient discharged by mental health review tribunal, Home Secretary or Court"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Patient discharged him/herself"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Patient discharged him/herself or was discharged by a relative or advocate"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Patient discharged on clinical advice or with clinical consent"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Patient discharged on clinical advice or with clinical consent"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Stillbirth"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Stillbirth"
* include codes from system $UKCore-DischargeMethodEngland
* include codes from system $UKCore-DischargeMethodWales

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-DischargeMethod"