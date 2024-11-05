Alias: $UKCore-DischargeMethod = https://fhir.hl7.org.uk/ValueSet/UKCore-DischargeMethod

Extension: ExtensionUKCoreDischargeMethod
Id: Extension-UKCore-DischargeMethod
Title: "Extension UK Core Discharge Method"
Description: "An extension to support the method of discharge from a hospital."
Context: Encounter
* ^version = "2.2.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Encounter Resource to support the exchange of information representing the method by which a patient was discharged from hospital."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "An extension to record the method of discharge from hospital"
* . ^definition = "An extension to record the method of discharge from hospital."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $UKCore-DischargeMethod (extensible)
* value[x] ^short = "The method by which a patient was discharged from hospital"
* value[x] ^definition = "The method by which a patient was discharged from hospital."
* value[x] ^binding.description = "The method by which a patient was discharged from hospital"

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DischargeMethod"