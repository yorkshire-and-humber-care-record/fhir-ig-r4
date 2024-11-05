Alias: $UKCore-EncounterLocationTypeEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland
Alias: $UKCore-EncounterLocationTypeWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales

ValueSet: UKCoreEncounterLocationType
Id: UKCore-EncounterLocationType
Title: "UK Core Encounter Location Type"
Description: "A set of codes that define the physical type of location where an encounter takes place."
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
* ^expansion.identifier = "35eebbd3-74a9-437c-b093-a5bd947718f5"
* ^expansion.timestamp = "2022-01-07T13:27:56+00:00"
* ^expansion.total = 84
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #G02
* ^expansion.contains[=].display = "Care Home With Nursing"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #G01
* ^expansion.contains[=].display = "Care Home Without Nursing"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #A02
* ^expansion.contains[=].display = "Carer's Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #K02
* ^expansion.contains[=].display = "Child Development Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #G03
* ^expansion.contains[=].display = "Children's Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #01
* ^expansion.contains[=].display = "Clients or patients home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #H01
* ^expansion.contains[=].display = "Day Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #15
* ^expansion.contains[=].display = "Day Centre managed by Local Authority"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #16
* ^expansion.contains[=].display = "Day Centre managed by Voluntary or Private Agents"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #E03
* ^expansion.contains[=].display = "Day Hospital"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #C02
* ^expansion.contains[=].display = "Dental Practice"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #N04
* ^expansion.contains[=].display = "Dispensing Optician Premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #N05
* ^expansion.contains[=].display = "Dispensing Pharmacy Premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #E04
* ^expansion.contains[=].display = "Emergency Care Department or Minor Injuries Department"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #D03
* ^expansion.contains[=].display = "Emergency Community Dental Service"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L02
* ^expansion.contains[=].display = "Further Education College"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #C01
* ^expansion.contains[=].display = "General Medical Practitioner Practice"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #09
* ^expansion.contains[=].display = "Group Home managed by Local Authority"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #08
* ^expansion.contains[=].display = "Group Home managed by the NHS"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "Group Home managed by Voluntary or Private Agents"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #02
* ^expansion.contains[=].display = "Health Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Health Clinic managed by the NHS"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #20
* ^expansion.contains[=].display = "Health Clinic managed by Voluntary or Private Agents"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #06
* ^expansion.contains[=].display = "Hospice"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #F01
* ^expansion.contains[=].display = "Hospice"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M05
* ^expansion.contains[=].display = "Immigration Removal Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #G04
* ^expansion.contains[=].display = "Integrated Care Home Without Nursing and Care Home With Nursing"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #18
* ^expansion.contains[=].display = "NHS Consultant Clinic Premises off a NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #17
* ^expansion.contains[=].display = "NHS Consultant Clinic Premises on a NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #13
* ^expansion.contains[=].display = "NHS Day Care Facility on NHS Hospital Sites"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #14
* ^expansion.contains[=].display = "NHS Day Care Facility on Other sites"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #38
* ^expansion.contains[=].display = "NHS Nursing Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L04
* ^expansion.contains[=].display = "Nursery Premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #C03
* ^expansion.contains[=].display = "Ophthalmic Medical Practitioner Premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L05
* ^expansion.contains[=].display = "Other Childcare Premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #E99
* ^expansion.contains[=].display = "Other Departments"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L99
* ^expansion.contains[=].display = "Other Educational Premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #03
* ^expansion.contains[=].display = "Other GMP Premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #31
* ^expansion.contains[=].display = "Other Health or Local Authority Facility on NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #33
* ^expansion.contains[=].display = "Other Health or Local Authority Site managed by Local Authority"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #32
* ^expansion.contains[=].display = "Other Health or Local Authority Site managed by the NHS off NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #34
* ^expansion.contains[=].display = "Other Health or Local Authority Site managed by Voluntary or private Agents"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #37
* ^expansion.contains[=].display = "Other locations not classified elsewhere"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #X01
* ^expansion.contains[=].display = "Other locations not elsewhere classified"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #A04
* ^expansion.contains[=].display = "Other Patient Related Location"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #N02
* ^expansion.contains[=].display = "Other publicly accessible area or building"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #11
* ^expansion.contains[=].display = "Other Residential Care Homes managed by Local Authority"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #39
* ^expansion.contains[=].display = "Other Residential Care Homes managed by the NHS"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "Other Residential Care Homes managed by Voluntary or Private Agents"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #07
* ^expansion.contains[=].display = "Other Voluntary or Private Hospital or Nursing Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #D02
* ^expansion.contains[=].display = "Out of Hours Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #E01
* ^expansion.contains[=].display = "Out-Patient Clinic"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #A01
* ^expansion.contains[=].display = "Patient's Home"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #A03
* ^expansion.contains[=].display = "Patient's Workplace"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M03
* ^expansion.contains[=].display = "Police Station / Police Custody Suite"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #B02
* ^expansion.contains[=].display = "Polyclinic"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #B01
* ^expansion.contains[=].display = "Primary Care Health Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M01
* ^expansion.contains[=].display = "Prison"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #35
* ^expansion.contains[=].display = "Prison Department Establishments"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M02
* ^expansion.contains[=].display = "Probation Service Premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #27
* ^expansion.contains[=].display = "Professional Staff Group Department managed by Local Authority"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #26
* ^expansion.contains[=].display = "Professional Staff Group Department managed by the NHS off NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #28
* ^expansion.contains[=].display = "Professional Staff Group Department managed by Voluntary or Private Agents"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #25
* ^expansion.contains[=].display = "Professional Staff Group Department on NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #36
* ^expansion.contains[=].display = "Public Place or Street, or Police Station"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #J01
* ^expansion.contains[=].display = "Resource Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #23
* ^expansion.contains[=].display = "Resource Centre managed by Local Authority"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #22
* ^expansion.contains[=].display = "Resource Centre managed by the NHS off NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #24
* ^expansion.contains[=].display = "Resource Centre managed by Voluntary or Private Agents"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #21
* ^expansion.contains[=].display = "Resource Centre on NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L01
* ^expansion.contains[=].display = "School"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #29
* ^expansion.contains[=].display = "School Premises managed by Local Authority or Grant Maintained"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #30
* ^expansion.contains[=].display = "School Premises managed by Voluntary or Private Agents"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #N01
* ^expansion.contains[=].display = "Street or other public open space"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #K01
* ^expansion.contains[=].display = "Sure Start Children's Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L06
* ^expansion.contains[=].display = "Training Establishments"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L03
* ^expansion.contains[=].display = "University"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #N03
* ^expansion.contains[=].display = "Voluntary or charitable agency premises"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #D01
* ^expansion.contains[=].display = "Walk In Centre"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #E02
* ^expansion.contains[=].display = "Ward"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #04
* ^expansion.contains[=].display = "Ward or NHS Hospital Site"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M04
* ^expansion.contains[=].display = "Young Offender Institution"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M06
* ^expansion.contains[=].display = "Young Offender Institution (15-17)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EncounterLocationTypeEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M07
* ^expansion.contains[=].display = "Young Offender Institution (18-21)"
* include codes from system $UKCore-EncounterLocationTypeEngland
* include codes from system $UKCore-EncounterLocationTypeWales

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-EncounterLocationType"