ValueSet: UKCoreBodyHeightMeasurements
Id: UKCore-BodyHeightMeasurements
Title: "UK Core Body Height Measurements"
Description: "A code from the SNOMED CT UK coding system for the measurement of body lengths or heights. Selected from the SNOMED CT UK coding system: \r - 248337003 | Height from demispan (observable entity) \r - 1003998008 | Arm demispan (observable entity) \r - DescendantOrSelfOf 50373000 | Body height measure (observable entity) \r - MINUS  &nbsp;\r - 925931000000103 | Mid-parental height (observable entity)) &nbsp;\r - 925951000000105 | Predicted adult height (observable entity) &nbsp;\r - 248336007 | Pubis to ground height (observable entity) &nbsp;\r - 276350001 | Subischial leg length (observable entity) &nbsp;\r - 1153591001 | Length for age percentile (observable entity) &nbsp;\r - 1153604005 | Body height for age z-score (observable entity) &nbsp;\r - 1153590000 | Length for age z score (observable entity)"
* ^version = "1.0.1"
* ^status = #active
* ^date = "2024-02-27"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "bf1f8055-a123-421d-9c88-981892e6c285"
* ^expansion.timestamp = "2023-10-31T21:13:00+00:00"
* ^expansion.total = 12
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1003998008
* ^expansion.contains[=].display = "Arm demispan"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1153637007
* ^expansion.contains[=].display = "Body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #50373000
* ^expansion.contains[=].display = "Body height measure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162418000
* ^expansion.contains[=].display = "Estimated body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248337003
* ^expansion.contains[=].display = "Height from demispan"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162417005
* ^expansion.contains[=].display = "Pre-amputation estimated body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162392001
* ^expansion.contains[=].display = "Pre-amputation measured body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1149101003
* ^expansion.contains[=].display = "Recumbent body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162419008
* ^expansion.contains[=].display = "Self reported body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1230278008
* ^expansion.contains[=].display = "Self reported peak adult body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248335006
* ^expansion.contains[=].display = "Sitting height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248333004
* ^expansion.contains[=].display = "Standing height"
* include codes from system SNOMED_CT_INT
    where constraint = "(248337003 OR 1003998008 or descendantOrSelfOf 50373000) MINUS (925931000000103 OR 925951000000105 OR 248336007 OR 276350001 OR 1153591001 OR 1153604005 OR 1153590000)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BodyHeightMeasurements"