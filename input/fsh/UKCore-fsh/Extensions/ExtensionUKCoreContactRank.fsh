Extension: ExtensionUKCoreContactRank
Id: Extension-UKCore-ContactRank
Title: "Extension UK Core Contact Rank"
Description: "The preferred ranking or order of contact applied to a contact on a Patient's contact list."
Context: Patient.contact
* ^version = "2.2.0"
* ^date = "2022-12-16"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Patient resource to support the exchange of the preferred ranking or order of contact applied to a contact on a Patient's contact list."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "Preferred ranking or order of contact applied to a contact on a patient's contact list"
* . ^definition = "The preferred ranking or order of contact applied to a contact on a patient's contact list."
* value[x] 1..
* value[x] only positiveInt
* value[x] ^short = "The preferred ranking or order of contact applied to a contact on a patient's contact list"
* value[x] ^definition = "The preferred ranking or order of contact applied to a contact on a patient's contact list."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ContactRank"