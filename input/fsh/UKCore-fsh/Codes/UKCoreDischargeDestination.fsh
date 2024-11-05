Alias: $UKCore-DischargeDestinationEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland
Alias: $UKCore-DischargeDestinationWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales

ValueSet: UKCoreDischargeDestination
Id: UKCore-DischargeDestination
Title: "UK Core Discharge Destination"
Description: "A set of codes that define where a patient is sent on completion of a hospital provider spell, or a note that the patient died or was a still birth."
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
* ^expansion.identifier = "6e05b7bd-aec0-4b7d-9297-390243d17fb0"
* ^expansion.timestamp = "2022-01-07T11:39:10+00:00"
* ^expansion.total = 36
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #37
* ^expansion.contains[=].display = "Court"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #48
* ^expansion.contains[=].display = "High Security Psychiatric Hospital, Scotland"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #23
* ^expansion.contains[=].display = "Hospice"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #66
* ^expansion.contains[=].display = "Local Authority foster care"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #66
* ^expansion.contains[=].display = "Local authority foster care but not in Part 3 residential accommodation"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #65
* ^expansion.contains[=].display = "Local Authority Part 3 residential accommodation i.e. where care is provided"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #65
* ^expansion.contains[=].display = "Local Authority residential accommodation i.e. where care is provided"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #49
* ^expansion.contains[=].display = "NHS other Hospital Provider - high security psychiatric accommodation"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #50
* ^expansion.contains[=].display = "NHS other Hospital Provider - medium secure unit"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #51
* ^expansion.contains[=].display = "NHS other Hospital Provider - Ward for general patients or the younger physically disabled"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #52
* ^expansion.contains[=].display = "NHS other Hospital Provider - Ward for maternity patients or Neonates"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #53
* ^expansion.contains[=].display = "NHS other Hospital Provider - Ward for patients who are mentally ill or have Learning Disabilities"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #54
* ^expansion.contains[=].display = "NHS run Care Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #22
* ^expansion.contains[=].display = "No fixed abode"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #85
* ^expansion.contains[=].display = "Non-NHS (other than Local Authority) run Care Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #88
* ^expansion.contains[=].display = "Non-NHS (other than Local Authority) run Hospice"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #86
* ^expansion.contains[=].display = "Non-NHS (other than local authority) run nursing home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #87
* ^expansion.contains[=].display = "Non-NHS run hospital"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #84
* ^expansion.contains[=].display = "Non-NHS run hospital - medium secure unit"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #98
* ^expansion.contains[=].display = "Not applicable - Hospital Provider Spell not finished at episode end (i.e. not discharged) or current episode unfinished"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #98
* ^expansion.contains[=].display = "Not applicable - hospital provider spell not finished at episode end (i.e. not discharged, or current episode unfinished)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #79
* ^expansion.contains[=].display = "Not applicable - Patient died or stillbirth"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #79
* ^expansion.contains[=].display = "Not Applicable - Patient died or stillbirth"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #99
* ^expansion.contains[=].display = "Not known"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Own home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #51
* ^expansion.contains[=].display = "Patient transfer to another health board / trust"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #87
* ^expansion.contains[=].display = "Patient transfer to Non-NHS run hospital includes private hospitals e.g. BUPA"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #55
* ^expansion.contains[=].display = "Patient transfer within the same health board / trust"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #38
* ^expansion.contains[=].display = "Penal establishment or police station"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #39
* ^expansion.contains[=].display = "Penal establishment, court or police station or police custody suite"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #20
* ^expansion.contains[=].display = "Permanent residence at nursing home, residential care home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #30
* ^expansion.contains[=].display = "Repatriation from high security psychiatric accommodation in an NHS Hospital Provider (NHS Trust or NHS Foundation Trust)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #29
* ^expansion.contains[=].display = "Temporary place of residence when usually resident elsewhere (includes hotel, residential Educational Establishment)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #29
* ^expansion.contains[=].display = "Temporary place of residence when usually resident elsewhere (includes hotel, residential educational establishment)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #21
* ^expansion.contains[=].display = "Temporary residence at nursing home, residential care home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DischargeDestinationEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Usual place of residence unless listed below, for example, a private dwelling whether owner occupied or owned by Local Authority, housing association or other landlord. This includes wardened accommodation but not residential accommodation where health care is provided. It also includes patients with no fixed abode."
* include codes from system $UKCore-DischargeDestinationEngland
* include codes from system $UKCore-DischargeDestinationWales

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-DischargeDestination"