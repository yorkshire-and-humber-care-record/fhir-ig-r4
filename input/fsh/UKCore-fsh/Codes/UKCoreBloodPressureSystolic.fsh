ValueSet: UKCoreBloodPressureSystolic
Id: UKCore-BloodPressure-Systolic
Title: "UK Core Blood Pressure Systolic"
Description: "A code from the SNOMED CT UK coding system for the recording of a single systolic blood pressure reading. Selected from the SNOMED CT UK coding system: \r - 163030003 | On examination - Systolic blood pressure reading (finding) \r - 271649006 | Systolic blood pressure (observable entity) \r - 407556006 | Lying systolic blood pressure (observable entity) \r - 1162737008 | Self reported systolic blood pressure (observable entity) \r - 407554009 | Sitting systolic blood pressure (observable entity) \r - 400974009 | Standing systolic blood pressure (observable entity) \r - 72313002 | Systolic arterial pressure (observable entity)"
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
* ^expansion.identifier = "3fdae7f8-8c2f-4f30-bd51-4e21b000a5f7"
* ^expansion.timestamp = "2023-10-31T22:01:00+00:00"
* ^expansion.total = 7
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #407556006
* ^expansion.contains[=].display = "Lying systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #163030003
* ^expansion.contains[=].display = "O/E - Systolic BP reading"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162737008
* ^expansion.contains[=].display = "Self reported systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #407554009
* ^expansion.contains[=].display = "Sitting systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #400974009
* ^expansion.contains[=].display = "Standing systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #72313002
* ^expansion.contains[=].display = "Systolic arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #271649006
* ^expansion.contains[=].display = "Systolic blood pressure"
* include codes from system SNOMED_CT_INT
    where constraint = "163030003 OR 271649006 OR 407556006 OR 1162737008 OR 407554009 OR 400974009 OR 72313002"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-Systolic"