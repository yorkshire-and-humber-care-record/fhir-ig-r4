ValueSet: UKCoreBloodPressureDiastolic
Id: UKCore-BloodPressure-Diastolic
Title: "UK Core Blood Pressure Diastolic"
Description: "A code from the SNOMED CT UK coding system for the recording of a single diastolic blood pressure reading. Selected from the SNOMED CT UK coding system: \r - 163031004 | On examination - Diastolic blood pressure reading (finding) \r - 271650006 | Diastolic blood pressure (observable entity) \r - 1091811000000102  | Diastolic arterial pressure (observable entity) \r - 407557002 | Lying diastolic blood pressure (observable entity) \r - 1162735000 | Self reported diastolic blood pressure (observable entity) \r - 407555005 | Sitting diastolic blood pressure (observable entity) \r - 400975005 | Standing diastolic blood pressure (observable entity)"
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
* ^expansion.identifier = "8e223e38-e1dd-4f5c-a89f-d05786c01f31"
* ^expansion.timestamp = "2023-11-01T08:31:00+00:00"
* ^expansion.total = 7
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1091811000000102
* ^expansion.contains[=].display = "Diastolic arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #271650006
* ^expansion.contains[=].display = "Diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #407557002
* ^expansion.contains[=].display = "Lying diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #163031004
* ^expansion.contains[=].display = "O/E - Diastolic BP reading"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162735000
* ^expansion.contains[=].display = "Self reported diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #407555005
* ^expansion.contains[=].display = "Sitting diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #400975005
* ^expansion.contains[=].display = "Standing diastolic blood pressure"
* include codes from system SNOMED_CT_INT
    where constraint = "163031004 OR 271650006 OR 1091811000000102 OR 407557002 OR 1162735000 OR 407555005 OR 400975005"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-Diastolic"