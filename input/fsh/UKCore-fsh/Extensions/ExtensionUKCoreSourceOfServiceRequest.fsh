//Alias: $UKCore-SourceOfServiceRequest = https://fhir.hl7.org.uk/ValueSet/UKCore-SourceOfServiceRequest

Extension: ExtensionUKCoreSourceOfServiceRequest
Id: Extension-UKCore-SourceOfServiceRequest
Title: "Extension UK Core Source Of Service Request"
Description: "This extension describes the source of the Service Request."
Context: ServiceRequest
* ^version = "1.2.0"
* ^date = "2022-12-16"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Service Request Resource to support the exchange of information describing the source of the Service Request."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "This represents the source of referral"
* . ^definition = "This represents the source of referral."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from UKCore-SourceOfServiceRequest (preferred)
* value[x] ^short = "A set of codes that describe the source of the service request."
* value[x] ^definition = "A set of codes that describe the source of the service request. Selected from the Referred by person and Self-referral hierarchies of the SNOMED CT UK coding system."
* value[x] ^binding.description = "A set of codes that describe the source of the service request."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-SourceOfServiceRequest"