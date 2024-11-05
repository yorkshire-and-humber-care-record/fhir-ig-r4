Alias: $UKCore-SourceOfAdmissionEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland
Alias: $UKCore-SourceOfAdmissionWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales

ValueSet: UKCoreSourceOfAdmission
Id: UKCore-SourceOfAdmission
Title: "UK Core Source Of Admission"
Description: "A set of codes that define the source of admission to a hospital provider spell or a nursing episode when the patient is in a hospital site or a care home."
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
* ^expansion.identifier = "46af3917-793c-41cb-8f25-7896369966e7"
* ^expansion.timestamp = "2022-01-07T13:58:13+00:00"
* ^expansion.total = 29
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #79
* ^expansion.contains[=].display = "Babies born in or on the way to hospital"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #79
* ^expansion.contains[=].display = "Babies born in or on way to hospital. (Baby Activity)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #23
* ^expansion.contains[=].display = "Hospice."
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #66
* ^expansion.contains[=].display = "Local Authority foster care"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #66
* ^expansion.contains[=].display = "Local Authority foster care but not in Part 3 residential accommodation."
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #65
* ^expansion.contains[=].display = "Local Authority Part 3 residential accommodations i.e. where care is provided."
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #65
* ^expansion.contains[=].display = "Local Authority residential accommodation i.e. where care is provided"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #49
* ^expansion.contains[=].display = "NHS other Hospital Provider - high security psychiatric accommodation in an NHS Hospital Provider (NHS Trust or NHS Foundation Trust)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #51
* ^expansion.contains[=].display = "NHS other Hospital Provider - Ward for general Patients or the younger physically disabled or Emergency Care Department"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #52
* ^expansion.contains[=].display = "NHS other Hospital Provider - Ward for maternity Patients or Neonates"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #53
* ^expansion.contains[=].display = "NHS other Hospital Provider - Ward for Patients who are mentally ill or have Learning Disabilities"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #54
* ^expansion.contains[=].display = "NHS run Care Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #22
* ^expansion.contains[=].display = "No fixed abode."
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #87
* ^expansion.contains[=].display = "Non NHS run hospital"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #85
* ^expansion.contains[=].display = "Non-NHS (other than Local Authority) run Care Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #88
* ^expansion.contains[=].display = "Non-NHS (other than Local Authority) run Hospice"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #98
* ^expansion.contains[=].display = "Not applicable"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Own Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #87
* ^expansion.contains[=].display = "Patient transfer from non NHS hospital, includes private hospitals e.g. BUPA"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #51
* ^expansion.contains[=].display = "Patient transfer from other health board / trust"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #55
* ^expansion.contains[=].display = "Patient transfer within the same health board / trust."
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #39
* ^expansion.contains[=].display = "Penal establishment, court or police station or police custody suite"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #39
* ^expansion.contains[=].display = "Penal establishment, Court, or Police Station / Police Custody Suite"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #20
* ^expansion.contains[=].display = "Permanent residence at nursing home, residential care home."
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #99
* ^expansion.contains[=].display = "Source of admission not known"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #29
* ^expansion.contains[=].display = "Temporary place of residence when usually resident elsewhere (e.g. hotels, residential Educational Establishments)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #29
* ^expansion.contains[=].display = "Temporary place of residence, when usually resident elsewhere (includes hotel, residential educational institution)."
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #21
* ^expansion.contains[=].display = "Temporary residence at nursing home, residential care home."
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-SourceOfAdmissionEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Usual place of residence unless listed below, for example, a private dwelling whether owner occupied or owned by Local Authority, housing association or other landlord. This includes wardened accommodation but not residential accommodation where health care is provided. It also includes Patients with no fixed abode."
* include codes from system $UKCore-SourceOfAdmissionEngland
* include codes from system $UKCore-SourceOfAdmissionWales

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-SourceOfAdmission"