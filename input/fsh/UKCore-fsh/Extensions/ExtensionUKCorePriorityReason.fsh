Alias: $UKCore-ServiceRequestReasonCode = https://fhir.hl7.org.uk/ValueSet/UKCore-ServiceRequestReasonCode

Extension: ExtensionUKCorePriorityReason
Id: Extension-UKCore-PriorityReason
Title: "Extension UK Core Priority Reason"
Description: "This extends the Service Request Resource to support the underlying reason why a Service Request is urgent."
Context: ServiceRequest.priority
* ^version = "1.0.0"
* ^date = "2023-04-28"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This is a Genomics use case to record the reason why an urgent test has been requested. This differs from supportingInfo in that it does not necessarily indicate why the test is being requested."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "A SNOMED CT concept representing the reason a Service Request is urgent."
* . ^definition = "A SNOMED CT concept representing the reason a Service Request is urgent"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $UKCore-ServiceRequestReasonCode (preferred)
* value[x] ^short = "This describes the reason a service request is urgent"
* value[x] ^binding.description = "A set of codes that define the reason why a service request is urgent."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-PriorityReason"