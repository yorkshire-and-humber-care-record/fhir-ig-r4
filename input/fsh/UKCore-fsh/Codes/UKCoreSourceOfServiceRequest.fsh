ValueSet: UKCoreSourceOfServiceRequest
Id: UKCore-SourceOfServiceRequest
Title: "UK Core Source Of ServiceRequest"
Description: """A set of codes that describe the source of the service request. Selected from the Referred by person and Self-referral hierarchies of the SNOMED CT UK coding system:
- descendantOf 309013001 | Referred by person
- descendantOf 306098008 | Self-referral"""
* ^version = "1.2.0"
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
* ^expansion.extension.url = "http://hl7.org/fhir/StructureDefinition/valueset-unclosed"
* ^expansion.extension.valueBoolean = true
* ^expansion.identifier = "0ca3ae33-ba5f-4ee2-873c-f73f349d3e70"
* ^expansion.timestamp = "2022-02-23T08:33:53+00:00"
* ^expansion.total = 57
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/83821000000107/version/20220119"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183701009
* ^expansion.contains[=].display = "Dermatology self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183697006
* ^expansion.contains[=].display = "ENT self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183688007
* ^expansion.contains[=].display = "General medical self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183689004
* ^expansion.contains[=].display = "General surgical self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183691007
* ^expansion.contains[=].display = "Geriatric self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183693005
* ^expansion.contains[=].display = "Gynaecological self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183705000
* ^expansion.contains[=].display = "Haematology self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183702002
* ^expansion.contains[=].display = "Neurology self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183695003
* ^expansion.contains[=].display = "Obstetric self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183699009
* ^expansion.contains[=].display = "Ophthalmology self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183696002
* ^expansion.contains[=].display = "Orthopaedic self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183692000
* ^expansion.contains[=].display = "Paediatric self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #760081000000107
* ^expansion.contains[=].display = "Physiotherapy self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183706004
* ^expansion.contains[=].display = "Plastic surgery self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183690008
* ^expansion.contains[=].display = "Psychiatric self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183704001
* ^expansion.contains[=].display = "Radiotherapy self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1066021000000105
* ^expansion.contains[=].display = "Referred by advanced care practitioner"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185359002
* ^expansion.contains[=].display = "Referred by another GP"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #200181000000100
* ^expansion.contains[=].display = "Referred by cardiologist"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1065391000000104
* ^expansion.contains[=].display = "Referred by carer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185361006
* ^expansion.contains[=].display = "Referred by community doctor"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #835221000000101
* ^expansion.contains[=].display = "Referred by community matron"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1077201000000101
* ^expansion.contains[=].display = "Referred by community mental health nurse"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1077191000000103
* ^expansion.contains[=].display = "Referred by community nurse"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #312357002
* ^expansion.contains[=].display = "Referred by consultant"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185366001
* ^expansion.contains[=].display = "Referred by dentist"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1033551000000109
* ^expansion.contains[=].display = "Referred by Diabetes UK roadshow clinician"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #309014007
* ^expansion.contains[=].display = "Referred by doctor"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185373006
* ^expansion.contains[=].display = "Referred by family"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #108161000000109
* ^expansion.contains[=].display = "Referred by general practitioner"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1052681000000105
* ^expansion.contains[=].display = "Referred by health visitor"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #200171000000102
* ^expansion.contains[=].display = "Referred by heart failure nurse specialist"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185360007
* ^expansion.contains[=].display = "Referred by hospital doctor"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #276491000
* ^expansion.contains[=].display = "Referred by member of Primary Health Care Team"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185363009
* ^expansion.contains[=].display = "Referred by midwife"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185362004
* ^expansion.contains[=].display = "Referred by nurse"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185368000
* ^expansion.contains[=].display = "Referred by optician"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185369008
* ^expansion.contains[=].display = "Referred by pharmacist"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #2051000124106
* ^expansion.contains[=].display = "Referred by physician assistant"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185370009
* ^expansion.contains[=].display = "Referred by physiotherapist"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #2021000124102
* ^expansion.contains[=].display = "Referred by primary care physician"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1079521000000104
* ^expansion.contains[=].display = "Referred by private sector physician"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1065401000000101
* ^expansion.contains[=].display = "Referred by school nurse"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1991000124105
* ^expansion.contains[=].display = "Referred by self"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #185365002
* ^expansion.contains[=].display = "Referred by social worker"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #2031000124104
* ^expansion.contains[=].display = "Referred by specialist physician"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183700005
* ^expansion.contains[=].display = "Rheumatology self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1107201000000100
* ^expansion.contains[=].display = "Self referral for digital cognitive behavioural therapy for insomnia"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #304301000000105
* ^expansion.contains[=].display = "Self referral to substance misuse service"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #769411000000104
* ^expansion.contains[=].display = "Self referral to termination of pregnancy service"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #507291000000100
* ^expansion.contains[=].display = "Self-referral to accident and emergency department"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183687002
* ^expansion.contains[=].display = "Self-referral to hospital"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1036481000000106
* ^expansion.contains[=].display = "Self-referral to IAPT (Improving Access to Psychological Therapies) programme"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #198151000000108
* ^expansion.contains[=].display = "Self-referral to minor injuries clinic"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #310434002
* ^expansion.contains[=].display = "Self-referral to service"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #266752005
* ^expansion.contains[=].display = "Trauma self-referral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #183703007
* ^expansion.contains[=].display = "Urology self-referral"
* include codes from system SNOMED_CT_INT
    where constraint = "descendantOf 309013001 OR descendantOf 306098008"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-SourceOfServiceRequest"