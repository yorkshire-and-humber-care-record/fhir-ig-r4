ValueSet: UKCoreBodyWeightMeasurements
Id: UKCore-BodyWeightMeasurements
Title: "UK Core Body Weight Measurements"
Description: "A code from the SNOMED CT UK coding system for the measurement of body weight. Selected from the SNOMED CT UK coding system: \r - DescendantOrSelfOf 27113001 | Body weight (observable entity) \r - MINUS  &nbsp;\r - DescendantOrSelfOf 301334000 | Birth weight centile (observable entity) &nbsp;\r - DescendantOrSelfOf 400967004 | Baseline weight (observable entity) &nbsp;\r - DescendantOrSelfOf 248351003 | Previous well-weight (observable entity)"
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
* ^expansion.identifier = "d75409bd-f6ae-4634-8521-4f9bd9b43a29"
* ^expansion.timestamp = "2023-10-31T15:26:00+00:00"
* ^expansion.total = 16
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #364589006
* ^expansion.contains[=].display = "Birth weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #27113001
* ^expansion.contains[=].display = "Body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #363808001
* ^expansion.contains[=].display = "Body weight measure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #424927000
* ^expansion.contains[=].display = "Body weight with shoes"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #425024002
* ^expansion.contains[=].display = "Body weight without shoes"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735395000
* ^expansion.contains[=].display = "Current body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162388008
* ^expansion.contains[=].display = "Dosing body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #445541000
* ^expansion.contains[=].display = "Dry body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #443245006
* ^expansion.contains[=].display = "Estimated weight using Broselow Luten paediatric weight estimation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162420002
* ^expansion.contains[=].display = "Post-dialysis body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162414003
* ^expansion.contains[=].display = "Pre-amputation estimated body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162416001
* ^expansion.contains[=].display = "Pre-amputation measured body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162421003
* ^expansion.contains[=].display = "Pre-dialysis body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #784399000
* ^expansion.contains[=].display = "Self reported body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1230277003
* ^expansion.contains[=].display = "Self reported peak body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162389000
* ^expansion.contains[=].display = "Self reported pre-pregnancy body weight"
* include codes from system SNOMED_CT_INT
    where constraint = "descendantOrSelfOf 27113001 MINUS (descendantOrSelfOf 301334000 OR descendantOrSelfOf 400967004 OR descendantOrSelfOf 170804003 OR descendantOrSelfOf 852321000000100 OR descendantOrSelfOf 852311000000106 OR descendantOrSelfOf 248351003 OR descendantOrSelfOf 390734006 OR descendantOrSelfOf 363809009)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BodyWeightMeasurements"