ValueSet: UKCoreRespirationRate
Id: UKCore-RespirationRate
Title: "UK Core RespirationRate"
Description: "A set of codes that define a patients level of consciousness. Selected from the SNOMED CT UK coding system: \r - DescendantOrSelfOf 86290005 | Respiratory rate \r - MINUS  &nbsp;\r - DescendantOrSelfOf 927961000000102 | Baseline respiratory rate"
* ^version = "1.1.0"
* ^status = #active
* ^date = "2024-01-04"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "18feb664-d046-40a7-bc95-7949893fade9"
* ^expansion.timestamp = "2023-10-31T15:26:00+00:00"
* ^expansion.total = 3
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #271625008
* ^expansion.contains[=].display = "Rate of spontaneous respiration"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #86290005
* ^expansion.contains[=].display = "Respiratory rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #250810003
* ^expansion.contains[=].display = "Total breath rate"
* include codes from system SNOMED_CT_INT
    where constraint = "DescendantOrSelfOf 86290005 MINUS DescendantOrSelfOf 927961000000102"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-RespirationRate"