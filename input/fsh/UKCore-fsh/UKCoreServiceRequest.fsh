Alias: $Extension-UKCore-SourceOfServiceRequest = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-SourceOfServiceRequest
Alias: $Extension-UKCore-AdditionalContact = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-AdditionalContact
Alias: $Extension-UKCore-Coverage = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-Coverage
Alias: $Extension-UKCore-PriorityReason = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-PriorityReason
// Alias: $UKCore-GenomeSequencingCategory = https://fhir.hl7.org.uk/ValueSet/UKCore-GenomeSequencingCategory
// Alias: $UKCore-ProcedureCode = https://fhir.hl7.org.uk/ValueSet/UKCore-ProcedureCode
// Alias: $UKCore-ServiceRequestReasonCode = https://fhir.hl7.org.uk/ValueSet/UKCore-ServiceRequestReasonCode

Profile: UKCoreServiceRequest
Parent: ServiceRequest
Id: UKCore-ServiceRequest
Title: "UK Core ServiceRequest"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [ServiceRequest](https://hl7.org/fhir/R4/ServiceRequest.html)."
* ^version = "2.5.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile is a record of a request for a procedure or diagnostic or other service to be planned, proposed, or performed, as distinguished by the ServiceRequest.intent field value, with or on a patient."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    $Extension-UKCore-SourceOfServiceRequest named sourceOfServiceRequest 0..1 and
    $Extension-UKCore-AdditionalContact named additionalContact 0..* and
    $Extension-UKCore-Coverage named coverage 0..1
* extension[sourceOfServiceRequest] ^short = "Describes the source of the Service Request."
* extension[sourceOfServiceRequest] ^isModifier = false
* extension[additionalContact] ^short = "Supports recording of additional contacts, who should be contacted regarding questions arising from the service request. This differs from the requester and responsibleClinician."
* extension[additionalContact] ^isModifier = false
* extension[coverage] ^short = "Supports the exchange of information describing the method of funding for the Service Request."
* extension[coverage] ^isModifier = false
* basedOn MS
* basedOn ^short = "What the service request fulfils."
* status MS
* status ^short = "The status of the order."
* intent MS
* intent ^short = "Whether the request is a proposal, plan, an original order or a reflex order."
* category MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^short = "A code that classifies the service for searching, sorting and display purposes."
* category contains genomicsWholeCaseSequencing 0..*
* category[genomicsWholeCaseSequencing] from UKCore-GenomeSequencingCategory (extensible)
* category[genomicsWholeCaseSequencing] ^short = "Classification of Genomics service"
* category[genomicsWholeCaseSequencing] ^definition = "A code that classifies the service for Genomics, whether it is a Whole Case Genome Sequencing or non-Whole Genome Sequencing for cancer or rare diseases"
* category[genomicsWholeCaseSequencing].coding.system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-GenomeSequencingCategory" (exactly)
* priority MS
* priority ^short = "Indicates how quickly the ServiceRequest should be addressed with respect to other requests."
//* priority.extension[priorityReason] only $Extension-UKCore-PriorityReason
* priority.extension contains $Extension-UKCore-PriorityReason named priorityReason 0..*
* priority.extension[priorityReason] ^sliceName = "priorityReason"
* priority.extension[priorityReason] ^short = "Supports the underlying reason why a Service Request is urgent."
* priority.extension[priorityReason] ^isModifier = false
* code MS
* code from UKCore-ProcedureCode (preferred)
* code ^short = "What is being requested/ordered."
* code ^binding.description = "A set of codes that define a procedure or a procedure with explicit context. Selected from the SNOMED CT UK coding system."
* orderDetail from UKCore-ProcedureCode (preferred)
* subject MS
* subject ^short = "The individual or entity the service is ordered for."
* authoredOn MS
* authoredOn ^short = "The date the request was signed."
* requester MS
* requester ^short = "Who / what is requesting the service"
* reasonCode from UKCore-ServiceRequestReasonCode (preferred)
* reasonCode ^binding.description = "A set of codes that define a reason for a service request."
* bodySite ^binding.strength = #preferred

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-ServiceRequest"