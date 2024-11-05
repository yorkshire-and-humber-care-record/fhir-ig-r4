ValueSet: UKCoreBodyPosition
Id: UKCore-BodyPosition
Title: "UK Core Body Position"
Description: "A set of codes that define a patients body position when a clinical observation was taken. Selected from the SNOMED CT UK coding system: \r - 30212006 | Fowler's position (finding) \r - 26527006 | Inverse Trendelenburg position (finding) \r - 102536004 | Left lateral decubitus position (finding) \r - 414585002 | Left lateral tilt (finding) \r - 10904000 | Orthostatic body position (finding) \r - 1240000 | Prone body position (finding) \r - 102538003 | Recumbent body position (finding) \r - 423413008 | Reverse trendelenburg positioning (finding) \r - 102535000 | Right lateral decubitus position (finding) \r - 415346000 | Right lateral tilt (finding) \r - 33586001 | Sitting position (finding) \r - 40199007 | Supine body position (finding) \r - 34106002 | Trendelenburg position (finding)"
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
* ^expansion.identifier = "6f0541ae-6911-4576-8006-87ea5e2674c3"
* ^expansion.timestamp = "2023-11-06T11:19:00+00:00"
* ^expansion.total = 13
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #30212006
* ^expansion.contains[=].display = "Fowler's position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #26527006
* ^expansion.contains[=].display = "Inverse Trendelenburg position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #102536004
* ^expansion.contains[=].display = "Left lateral decubitus position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #414585002
* ^expansion.contains[=].display = "Left lateral tilt"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #10904000
* ^expansion.contains[=].display = "Orthostatic body position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1240000
* ^expansion.contains[=].display = "Prone body position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #102538003
* ^expansion.contains[=].display = "Recumbent body position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #423413008
* ^expansion.contains[=].display = "Reverse trendelenburg positioning"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #102535000
* ^expansion.contains[=].display = "Right lateral decubitus position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415346000
* ^expansion.contains[=].display = "Right lateral tilt"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #33586001
* ^expansion.contains[=].display = "Sitting position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #40199007
* ^expansion.contains[=].display = "Supine body position"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #34106002
* ^expansion.contains[=].display = "Trendelenburg position"
* include codes from system SNOMED_CT_INT
    where constraint = "30212006 OR 26527006 OR 102536004 OR 414585002 OR 10904000 OR 1240000 OR 102538003 OR 423413008 OR 102535000 OR 415346000 OR 33586001 OR 40199007 OR 34106002"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BodyPosition"