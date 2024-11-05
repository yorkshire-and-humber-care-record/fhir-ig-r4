Extension: ExtensionUKCoreMedicationStatementLastIssueDate
Id: Extension-UKCore-MedicationStatementLastIssueDate
Title: "Extension UKCore Medication Statement Last Issue Date"
Description: "This describes the date when a prescription was last issued."
Context: MedicationStatement
* ^version = "2.1.0"
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the MedicationStatement resource to support the exchange of the date information when a prescription was last issued."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "The date when a prescription was last issued"
* . ^definition = "This extension supports the exchange of the date information when a prescription was last issued."
* value[x] 1..
* value[x] only dateTime
* value[x] ^short = "The date when a prescription was last issued"
* value[x] ^definition = "This carries the date when a prescription was last issued."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-MedicationStatementLastIssueDate"