ValueSet: UKCoreOxygenSaturation
Id: UKCore-OxygenSaturation
Title: "UK Core OxygenSaturation"
Description: "A set of codes that define a patients level of consciousness. Selected from the SNOMED CT UK coding system: \r - DescendantOrSelfOf 103228002 | Hemoglobin saturation with oxygen (observable entity) \r - MINUS  &nbsp;\r - DescendantOrSelfOf 927981000000106 | Baseline oxygen saturation at periphery &nbsp;\r - DescendantOrSelfOf 852651000000100 | Maximum peripheral oxygen saturation &nbsp;\r - DescendantOrSelfOf 852661000000102 | Minimum peripheral oxygen saturation &nbsp;\r - DescendantOrSelfOf 852641000000103 | Target peripheral oxygen saturation &nbsp;\r - DescendantOrSelfOf 442349007 | Venous oxygen saturation"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "b6e8fe07-0f7e-4f44-b956-0f63b2286c2c"
* ^expansion.timestamp = "2023-10-31T15:59:00+00:00"
* ^expansion.total = 15
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442476006
* ^expansion.contains[=].display = "Arterial oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1097811000000106
* ^expansion.contains[=].display = "Arterial oxygen saturation on room air at rest"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1097821000000100
* ^expansion.contains[=].display = "Arterial oxygen saturation on supplemental oxygen at rest"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #103228002
* ^expansion.contains[=].display = "Blood oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1017311000000104
* ^expansion.contains[=].display = "Blood oxygen saturation (calculated)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442440005
* ^expansion.contains[=].display = "Capillary oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #718059008
* ^expansion.contains[=].display = "Cerebral oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #373638005
* ^expansion.contains[=].display = "Conjunctival oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442381003
* ^expansion.contains[=].display = "Intracardiac oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442386008
* ^expansion.contains[=].display = "Jugular bulb oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #866661000000106
* ^expansion.contains[=].display = "Peripheral blood oxygen saturation on room air at rest"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #866681000000102
* ^expansion.contains[=].display = "Peripheral blood oxygen saturation on room air on exertion"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #866701000000100
* ^expansion.contains[=].display = "Peripheral blood oxygen saturation on supplemental oxygen at rest"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #866721000000109
* ^expansion.contains[=].display = "Peripheral blood oxygen saturation on supplemental oxygen on exertion"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #431314004
* ^expansion.contains[=].display = "Peripheral oxygen saturation"
* include codes from system SNOMED_CT_INT
    where constraint = "DescendantOrSelfOf 103228002 MINUS (DescendantOrSelfOf 927981000000106 OR DescendantOrSelfOf 852651000000100 OR DescendantOrSelfOf 852661000000102 OR DescendantOrSelfOf 852641000000103 OR DescendantOrSelfOf 442349007)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-OxygenSaturation"