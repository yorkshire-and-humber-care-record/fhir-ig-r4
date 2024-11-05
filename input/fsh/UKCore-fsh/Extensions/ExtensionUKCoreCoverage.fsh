//Alias: $UKCore-FundingCategory = https://fhir.hl7.org.uk/ValueSet/UKCore-FundingCategory

Extension: ExtensionUKCoreCoverage
Id: Extension-UKCore-Coverage
Title: "Extension UK Core Coverage"
Description: "This extends the Service Request Resource to support the exchange of information describing the method of funding for the Service Request."
Context: ServiceRequest
* ^version = "1.0.0"
* ^date = "2023-04-28"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension is a Genomics use case to record the funding category for a ServiceRequest. It is expected this will be populated with a code indicating whether the service request is part of NHS coverage or private, and will be used for reimbursement purposes by receiving labs."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "The funding category for the Service Request"
* . ^definition = "The funding category for the Service Request."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from UKCore-FundingCategory (extensible)
* value[x] ^short = "This describes the funding category for a service request."
* value[x] ^binding.description = "A set of codes that define the funding category for a service request."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-Coverage"