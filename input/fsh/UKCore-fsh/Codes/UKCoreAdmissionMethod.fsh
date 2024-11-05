Alias: $UKCore-AdmissionMethodEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland
Alias: $UKCore-AdmissionMethodWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales

ValueSet: UKCoreAdmissionMethod
Id: UKCore-AdmissionMethod
Title: "UK Core Admission Method"
Description: "A set of codes that define the method of admission to a hospital provider spell."
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
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License.  You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "00d23c0f-fd6c-4c40-9db8-961d5792f61d"
* ^expansion.timestamp = "2022-01-10T14:51:00+00:00"
* ^expansion.total = 35
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #99
* ^expansion.contains[=].display = "Admission Method not known"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "Elective Admission: Booked"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "Elective Admission: Booked"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #13
* ^expansion.contains[=].display = "Elective Admission: Planned"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #13
* ^expansion.contains[=].display = "Elective Admission: Planned"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #11
* ^expansion.contains[=].display = "Elective Admission: Waiting list"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #11
* ^expansion.contains[=].display = "Elective Admission: Waiting list"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #21
* ^expansion.contains[=].display = "Emergency Admission: A & E or dental casualty department of the health care provider"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #25
* ^expansion.contains[=].display = "Emergency Admission: Admission via Mental Health Crisis Resolution Team"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #2C
* ^expansion.contains[=].display = "Emergency Admission: Baby born at home as intended"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #23
* ^expansion.contains[=].display = "Emergency Admission: Bed bureau"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #23
* ^expansion.contains[=].display = "Emergency Admission: Bed bureau"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #24
* ^expansion.contains[=].display = "Emergency Admission: Consultant clinic of this or another health care provider"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #24
* ^expansion.contains[=].display = "Emergency Admission: Consultant Clinic, of this or another Health Care Provider"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #25
* ^expansion.contains[=].display = "Emergency Admission: Domiciliary visit by Consultant"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #2A
* ^expansion.contains[=].display = "Emergency Admission: Emergency Care Department of another provider where the Patient had not been admitted"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #21
* ^expansion.contains[=].display = "Emergency Admission: Emergency Care Department or dental casualty department of the Health Care Provider"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #22
* ^expansion.contains[=].display = "Emergency Admission: General Practitioner: after a request for immediate admission has been made direct to a Hospital Provider, i.e. not through a Bed bureau, by a General Practitioner or deputy"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #22
* ^expansion.contains[=].display = "Emergency Admission: GP: after a request for immediate admission has been made direct to a hospital provider (i.e. not through a Bed Bureau) by a General Practitioner or deputy"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #2D
* ^expansion.contains[=].display = "Emergency Admission: Other emergency admission"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #28
* ^expansion.contains[=].display = "Emergency Admission: Other means, examples are: - admitted from the Emergency Care Department of another provider where they had not been admitted - transfer of an admitted Patient from another Hospital Provider in an emergency - baby born at home as intended"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #28
* ^expansion.contains[=].display = "Emergency Admission: Other means, including admitted from the A & E department of another provider where they had not been admitted"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #2B
* ^expansion.contains[=].display = "Emergency Admission: Transfer of an admitted Patient from another Hospital Provider in an emergency"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #27
* ^expansion.contains[=].display = "Emergency Admission: Via NHS Direct Services"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #31
* ^expansion.contains[=].display = "Maternity Admission: Admitted ante partum"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #31
* ^expansion.contains[=].display = "Maternity Admission: Admitted ante-partum"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #32
* ^expansion.contains[=].display = "Maternity Admission: Admitted post partum"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #32
* ^expansion.contains[=].display = "Maternity Admission: Admitted post-partum"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #98
* ^expansion.contains[=].display = "Not applicable"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #83
* ^expansion.contains[=].display = "Other Admission: Baby born outside the health care provider (except when born at home as intended. In this case the baby is an emergency admission. e.g. if midwife's decision to admit the baby use Admission Method 28)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #83
* ^expansion.contains[=].display = "Other Admission: Baby born outside the Health Care Provider except when born at home as intended"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #82
* ^expansion.contains[=].display = "Other Admission: The birth of a baby in this Health Care Provider"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #82
* ^expansion.contains[=].display = "Other Admission: The birth of a baby in this health care provider"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #81
* ^expansion.contains[=].display = "Other Admission: Transfer of any admitted Patient from other Hospital Provider other than in an emergency"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-AdmissionMethodWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #81
* ^expansion.contains[=].display = "Other Admission: Transfer of any admitted patient from other hospital provider.  May be used for an elective or emergency transfer from other hospital provider."
* include codes from system $UKCore-AdmissionMethodEngland
* include codes from system $UKCore-AdmissionMethodWales

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-AdmissionMethod"