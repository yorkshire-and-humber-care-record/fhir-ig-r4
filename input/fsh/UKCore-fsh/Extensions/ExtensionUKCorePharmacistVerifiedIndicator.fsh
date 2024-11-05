Extension: ExtensionUKCorePharmacistVerifiedIndicator
Id: Extension-UKCore-PharmacistVerifiedIndicator
Title: "Extension UK Core Pharmacist Verified Indicator"
Description: "This Extension is used to indicate whether a pharmacist verified a medication."
Context: MedicationStatement
* ^version = "1.0.0"
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This Extension extends the MedicationStatement resource to allow the exchange of data to indicate whether a pharmacist verified the medication specified within or referenced by the medication statement."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "Indicates whether a pharmacist verified a medication."
* . ^definition = "This extension is used to indicate whether a pharmacist verified a medication."
* value[x] 1..
* value[x] only boolean
* value[x] ^short = "Pharmacist Verified Indicator."
* value[x] ^definition = "Boolean element representing the Pharmacist Verified Indicator."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-PharmacistVerifiedIndicator"