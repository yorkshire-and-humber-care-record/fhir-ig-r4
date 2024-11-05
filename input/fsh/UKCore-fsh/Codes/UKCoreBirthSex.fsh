ValueSet: UKCoreBirthSex
Id: UKCore-BirthSex
Title: "UK Core Birth Sex"
Description: "A set of codes that define a patient's phenotypic sex at birth."
* ^version = "2.1.0"
* ^status = #active
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "04934610-6905-4799-a11a-9ec063477c32"
* ^expansion.timestamp = "2021-09-09T13:58:59+00:00"
* ^expansion.total = 4
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender|2018-08-12"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor|2018-08-12"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* ^expansion.contains[=].version = "2018-08-12"
* ^expansion.contains[=].code = #UNK
* ^expansion.contains[=].display = "unknown"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender"
* ^expansion.contains[=].version = "2018-08-12"
* ^expansion.contains[=].code = #F
* ^expansion.contains[=].display = "Female"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender"
* ^expansion.contains[=].version = "2018-08-12"
* ^expansion.contains[=].code = #M
* ^expansion.contains[=].display = "Male"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender"
* ^expansion.contains[=].version = "2018-08-12"
* ^expansion.contains[=].code = #UN
* ^expansion.contains[=].display = "Undifferentiated"
* include codes from system AdministrativeGender
* NullFlavor#UNK "unknown"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BirthSex"