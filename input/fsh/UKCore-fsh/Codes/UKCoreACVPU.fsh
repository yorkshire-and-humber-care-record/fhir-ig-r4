ValueSet: UKCoreACVPU
Id: UKCore-ACVPU
Title: "UK Core ACVPU"
Description: "A set of codes that define a patients level of consciousness. Selected from the SNOMED CT UK coding system: \r - 248234008 | Mentally alert \r - 300202002 | Responds to voice \r - 450847001 | Responds to pain \r - 422768004 | Unresponsive \r - 130987000 | Acute confusion"
* ^version = "2.1.0"
* ^status = #active
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "6c36caea-57d1-42a7-8621-ae1addc67581"
* ^expansion.timestamp = "2023-01-20T10:50:41+00:00"
* ^expansion.total = 5
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #130987000
* ^expansion.contains[=].display = "Acute confusion"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248234008
* ^expansion.contains[=].display = "Mentally alert"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #450847001
* ^expansion.contains[=].display = "Responds to pain"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #300202002
* ^expansion.contains[=].display = "Responds to voice"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #422768004
* ^expansion.contains[=].display = "Unresponsive"
* include codes from system SNOMED_CT_INT
    where constraint = "(248234008 OR 300202002 OR 450847001 OR 422768004 OR 130987000)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-ACVPU"