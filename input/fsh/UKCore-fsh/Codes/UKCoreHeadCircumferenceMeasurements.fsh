ValueSet: UKCoreHeadCircumferenceMeasurements
Id: UKCore-HeadCircumferenceMeasurements
Title: "UK Core Head Circumference Measurements"
Description: "A code from the SNOMED CT UK coding system for the measurement of head circumferences. Selected from the SNOMED CT UK coding system: \r - DescendantOrSelfOf 363811000 | Head circumference measure (observable entity) \r - MINUS  &nbsp;\r - 1153594009 | Head circumference for age z-score (observable entity) &nbsp;\r - 70751000052109 | Head circumference of biological father (observable entity) &nbsp;\r - 70761000052107 | Head circumference of biological mother (observable entity)  &nbsp;\r - DescendantOrSelfOf 170061009 | Child head circumference centile (observable entity)"
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
* ^expansion.identifier = "e0c507bd-7ebe-452f-8a9a-6a5aeaaa0636"
* ^expansion.timestamp = "2023-10-31T15:57:00+00:00"
* ^expansion.total = 5
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #169876006
* ^expansion.contains[=].display = "Birth head circumference"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #363812007
* ^expansion.contains[=].display = "Head circumference"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #363811000
* ^expansion.contains[=].display = "Head circumference measure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1269262007
* ^expansion.contains[=].display = "Head circumference of fetus"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248396005
* ^expansion.contains[=].display = "Head circumference with caput"
* include codes from system SNOMED_CT_INT
    where constraint = "descendantOrSelfOf 363811000 MINUS (1153594009 OR 70751000052109 OR 70761000052107 OR descendantOrSelfOf 170061009)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-HeadCircumferenceMeasurements"