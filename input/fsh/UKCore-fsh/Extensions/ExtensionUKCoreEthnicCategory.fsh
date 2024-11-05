Alias: $UKCore-EthnicCategory = https://fhir.hl7.org.uk/ValueSet/UKCore-EthnicCategory

Extension: ExtensionUKCoreEthnicCategory
Id: Extension-UKCore-EthnicCategory
Title: "Extension UK Core Ethnic Category"
Description: "Information that describes the patient's ethnic category."
Context: Patient
* ^version = "2.3.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Patient resource to support the exchange of ethnic category information, as a Codeable Concept."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "Ethnic category"
* . ^definition = "The ethnicity of the subject."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from UKCore-EthnicCategory (extensible)
* value[x] ^short = "A code classifying the person's ethnicity"
* value[x] ^definition = "A code classifying the person's ethnicity."
* value[x] ^binding.description = "A set of codes that define the ethnicity of a person, as specified by the person."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-EthnicCategory"