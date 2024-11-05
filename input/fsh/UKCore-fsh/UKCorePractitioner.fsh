Profile: UKCorePractitioner
Parent: Practitioner
Id: UKCore-Practitioner
Title: "UK Core Practitioner"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Practitioner](https://hl7.org/fhir/R4/Practitioner.html)."
* ^version = "2.4.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of information about all individuals who are engaged in the healthcare process and healthcare-related services as part of their formal responsibilities, is used for attribution of activities and responsibilities to these individuals."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* identifier MS
* identifier ^short = "An identifier that applies to this person in this role."
* name MS
* name ^short = "The name(s) associated with the practitioner."
* telecom MS
* telecom ^short = "A contact detail for the practitioner (that apply to all roles)."
* communication from AllLanguages (required)
* communication ^binding.description = "A ValueSet that identifies the language used by a person."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Practitioner"