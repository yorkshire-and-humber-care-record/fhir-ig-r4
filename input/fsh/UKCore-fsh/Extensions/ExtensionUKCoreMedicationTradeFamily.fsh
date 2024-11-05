Alias: $UKCore-MedicationTradeFamily = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationTradeFamily

Extension: ExtensionUKCoreMedicationTradeFamily
Id: Extension-UKCore-MedicationTradeFamily
Title: "Extension UK Core Medication Trade Family"
Description: "This Extension is used to identify a Trade Family or brand associated with a Medication, in particular a Virtual Therapeutic Moiety (VTM)."
Context: Medication
* ^version = "1.1.0"
* ^date = "2022-12-16"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This Extension extends the Medication resource to allow the exchange of data to indicate a Trade Family or brand associated with a medication."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "An extension used to identify a Trade Family or brand associated with a Medication, in particular a Virtual Therapeutic Moiety (VTM)."
* . ^definition = "An extension used to identify a Trade Family or brand associated with a Medication, in particular a Virtual Therapeutic Moiety (VTM).."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $UKCore-MedicationTradeFamily (preferred)
* value[x] ^short = "A code from the SNOMED Clinical Terminology UK coding system to record a Trade Family associated with a Medication"
* value[x] ^definition = "A code from the SNOMED Clinical Terminology UK coding system to record a Trade Family associated with a Medication."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-MedicationTradeFamily"