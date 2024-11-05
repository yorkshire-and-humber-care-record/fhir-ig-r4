Extension: ExtensionUKCoreCopyCorrespondenceIndicator
Id: Extension-UKCore-CopyCorrespondenceIndicator
Title: "Extension UK Core Copy Correspondence Indicator"
Description: "Indicates that a Patient contact or RelatedPerson SHALL be copied in to Patient correspondence."
Context: Patient.contact, RelatedPerson
* ^version = "2.2.0"
* ^date = "2022-08-26"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Patient and RelatedPerson resources, to support the exchange of information to indicate that a Patient contact or RelatedPerson SHALL be copied in to Patient correspondence."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "Indicator showing that a patient's contact or related person SHALL be copied in to patient correspondence"
* . ^definition = "Extension carrying a boolean indicator showing that a patient's contact or related person SHALL be copied in to patient correspondence."
* value[x] 1..
* value[x] only boolean
* value[x] ^short = "Copy Correspondence Indicator"
* value[x] ^definition = "Boolean element representing Copy Correspondence Indicator."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-CopyCorrespondenceIndicator"