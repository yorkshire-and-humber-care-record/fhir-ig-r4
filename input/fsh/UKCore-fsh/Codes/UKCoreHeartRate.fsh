ValueSet: UKCoreHeartRate
Id: UKCore-HeartRate
Title: "UK Core HeartRate"
Description: "A set of codes that define a patients level of consciousness. Selected from the SNOMED CT UK coding system: \r - DescendantOrSelfOf 364075005 | Heart rate (observable entity) \r - MINUS  &nbsp;\r - DescendantOrSelfOf 251670001 | Baseline fetal heart rate &nbsp;\r - DescendantOrSelfOf 928001000000104 | Baseline heart rate &nbsp;\r - DescendantOrSelfOf 852341000000107 | Maximum pulse rate &nbsp;\r - DescendantOrSelfOf 852351000000105 | Minimum pulse rate &nbsp;\r - DescendantOrSelfOf 428420003 | Target heart rate &nbsp;\r - DescendantOrSelfOf 852331000000103 | Target pulse rate"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "e9f05b8a-dc8b-484a-801b-f3b779ffc771"
* ^expansion.timestamp = "2023-10-31T13:26:00+00:00"
* ^expansion.total = 10
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #422119006
* ^expansion.contains[=].display = "Brachial pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #429525003
* ^expansion.contains[=].display = "Dorsalis pedis pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #249043002
* ^expansion.contains[=].display = "Fetal heart rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #364075005
* ^expansion.contains[=].display = "Heart rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1089491000000108
* ^expansion.contains[=].display = "Heart rate at cardiac apex"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #399017001
* ^expansion.contains[=].display = "Heart rate on admission"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #429614003
* ^expansion.contains[=].display = "Posterior tibial pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #78564009
* ^expansion.contains[=].display = "Pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #843941000000100
* ^expansion.contains[=].display = "Radial pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #444981005
* ^expansion.contains[=].display = "Resting heart rate"
* include codes from system SNOMED_CT_INT
    where constraint = "DescendantOrSelfOf 364075005 MINUS (DescendantOrSelfOf 251670001 OR DescendantOrSelfOf 928001000000104 OR DescendantOrSelfOf 852341000000107 OR DescendantOrSelfOf 852351000000105 OR DescendantOrSelfOf 428420003 OR DescendantOrSelfOf 852331000000103)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-HeartRate"