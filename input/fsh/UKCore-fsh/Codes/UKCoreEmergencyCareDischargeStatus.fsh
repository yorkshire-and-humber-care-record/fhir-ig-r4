Alias: $UKCore-EmergencyCareOutcomeOfAttendanceWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales

ValueSet: UKCoreEmergencyCareDischargeStatus
Id: UKCore-EmergencyCareDischargeStatus
Title: "UK Core Emergency Care Discharge Status"
Description: "A set of codes that describe the outcome of, or status of a patient on discharge from, an Emergency Care Department attendance."
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
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License.  You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html. This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* ^expansion.identifier = "16f5170b-e51b-44ba-aec9-4ff307a50da6"
* ^expansion.timestamp = "2022-01-07T12:54:35+00:00"
* ^expansion.total = 28
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "http://snomed.info/sct|http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #02
* ^expansion.contains[=].display = "Admitted to other Hospital within Local Health Board"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #01
* ^expansion.contains[=].display = "Admitted to same Hospital within Local Health Board"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #63238001
* ^expansion.contains[=].display = "Dead on arrival at hospital"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "Died in Department"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #75004002
* ^expansion.contains[=].display = "Emergency room admission, died in emergency room"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1066311000000101
* ^expansion.contains[=].display = "Left care setting after initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1066301000000103
* ^expansion.contains[=].display = "Left care setting before initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1066321000000107
* ^expansion.contains[=].display = "Left care setting before treatment completed"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #07
* ^expansion.contains[=].display = "No Planned Follow-up"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #11
* ^expansion.contains[=].display = "Patient Dead on Arrival"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #09
* ^expansion.contains[=].display = "Patient Self Discharged without Clinical Consent"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #08
* ^expansion.contains[=].display = "Planned Follow-up at Accident and Emergency Department"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #05
* ^expansion.contains[=].display = "Referred to GP"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #06
* ^expansion.contains[=].display = "Referred to Other Healthcare Professional"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #04
* ^expansion.contains[=].display = "Referred to Outpatient Department"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077081000000104
* ^expansion.contains[=].display = "Streamed from emergency department to ambulatory emergency care service following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077051000000105
* ^expansion.contains[=].display = "Streamed from emergency department to dental service following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077091000000102
* ^expansion.contains[=].display = "Streamed from emergency department to falls service following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077101000000105
* ^expansion.contains[=].display = "Streamed from emergency department to frailty service following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077021000000100
* ^expansion.contains[=].display = "Streamed from emergency department to general practitioner following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1324201000000109
* ^expansion.contains[=].display = "Streamed from emergency department to inpatient unit following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077041000000107
* ^expansion.contains[=].display = "Streamed from emergency department to mental health service following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077061000000108
* ^expansion.contains[=].display = "Streamed from emergency department to ophthalmology service following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077071000000101
* ^expansion.contains[=].display = "Streamed from emergency department to pharmacy service following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077031000000103
* ^expansion.contains[=].display = "Streamed from emergency department to urgent care service following initial assessment"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #1077781000000101
* ^expansion.contains[=].display = "Streamed to emergency department following initial assessment"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EmergencyCareOutcomeOfAttendanceWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #03
* ^expansion.contains[=].display = "Transferred to different Local Health Board"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/83821000000107/version/20211222"
* ^expansion.contains[=].code = #182992009
* ^expansion.contains[=].display = "Treatment completed"
* include codes from system SNOMED_CT_INT where constraint = "memberOf 999003021000000104"
* include codes from system $UKCore-EmergencyCareOutcomeOfAttendanceWales

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-EmergencyCareDischargeStatus"