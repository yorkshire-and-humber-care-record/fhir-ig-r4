Extension: ExtensionUKCoreAdditionalContact
Id: Extension-UKCore-AdditionalContact
Title: "Extension UK Core Additional Contact"
Description: "An extension to support recording of additional contacts, who should be contacted regarding questions arising from the service request. This differs from the requester and responsibleClinician."
Context: ServiceRequest
* ^version = "1.1.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This is a Genomics use case to record who should be contacted regarding questions arising from a Genomics Test Order, along with their contact details, which differs from requester and responsibleClinician."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "Details of an additional contact"
* . ^definition = "Details of an additional contact, who should be contacted regarding questions arising from the service request."
* value[x] 1..
* value[x] only Reference(Organization or Practitioner or PractitionerRole)
* value[x] ^short = "A link to a the resource to be contacted."
* value[x] ^definition = "A link to the Organization, Practitioner, or PractitionerRole resource to be contacted."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-AdditionalContact"