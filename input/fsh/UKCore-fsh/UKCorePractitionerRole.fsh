Profile: UKCorePractitionerRole
Parent: PractitionerRole
Id: UKCore-PractitionerRole
Title: "UK Core PractitionerRole"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [PractitionerRole](https://hl7.org/fhir/R4/PractitionerRole.html)."
* ^version = "2.4.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of a specific set of roles, specialties and services that a practitioner may perform at an organisation for a period of time."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* active MS
* active ^short = "Whether this practitioner role record is in active use."
* period MS
* period ^short = "The period during which the practitioner is authorized to perform in these role(s)."
* practitioner MS
* practitioner ^short = "Practitioner that is able to provide the defined services for the organization."
* organization MS
* organization ^short = "Organization where the roles are available."
* specialty MS
* specialty from UKCore-PracticeSettingCode (extensible)
* specialty ^short = "Specific specialty of the practitioner."
* location MS
* location ^short = "The location(s) at which this practitioner provides care."
* telecom MS
* telecom ^short = "Contact details that are specific to the role/location/service."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-PractitionerRole"