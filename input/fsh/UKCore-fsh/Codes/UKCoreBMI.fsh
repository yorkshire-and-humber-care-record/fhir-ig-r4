ValueSet: UKCoreBMI
Id: UKCore-BMI
Title: "UK Core BMI"
Description: "A set of codes that define a patients level of consciousness. Selected from the SNOMED CT UK coding system: \r - DescendantOrSelfOf 60621009 | Body mass index (observable entity) \r - DescendantOrSelfOf 446974000 |Body mass index centile (observable entity \r - MINUS  &nbsp;\r - 846931000000101 | Baseline body mass index (observable entity) &nbsp;\r - 852451000000103 | Maximum body mass index (observable entity) &nbsp;\r - 852461000000100 | Minimum body mass index (observable entity) &nbsp;\r - 715456008 | Percentage median body mass index for age and sex (observable entity) &nbsp;\r - 846911000000109 | Baseline body mass index centile (observable entity) &nbsp;\r - 1153596006 | Body mass index for age z-score (observable entity) &nbsp;\r - 248358009 | Weight for height (observable entity)"
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
* ^expansion.identifier = "19fb99b5-b096-4514-8e0a-1548fcbe7d87"
* ^expansion.timestamp = "2023-10-31T21:11:00+00:00"
* ^expansion.total = 5
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #60621009
* ^expansion.contains[=].display = "Body mass index"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #446974000
* ^expansion.contains[=].display = "BMI (body mass index) centile"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1153602009
* ^expansion.contains[=].display = "Body mass index for age percentile"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #896691000000102
* ^expansion.contains[=].display = "Child body mass index centile"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #926011000000101
* ^expansion.contains[=].display = "Down syndrome body mass index centile"
* include codes from system SNOMED_CT_INT
    where constraint = "(DescendantOrSelfOf 60621009 OR DescendantOrSelfOf 446974000) MINUS (846931000000101 OR 852451000000103 OR 852461000000100 OR 715456008 OR 846911000000109 OR 1153596006 OR 248358009)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BMI"