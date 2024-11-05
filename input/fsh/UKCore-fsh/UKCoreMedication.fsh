Alias: $Extension-UKCore-MedicationTradeFamily = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-MedicationTradeFamily
//Alias: $UKCore-MedicationCode = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationCode
//Alias: $UKCore-MedicationForm = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationForm

Profile: UKCoreMedication
Parent: Medication
Id: UKCore-Medication
Title: "UK Core Medication"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Medication](https://hl7.org/fhir/R4/Medication.html)."
* ^version = "2.3.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains $Extension-UKCore-MedicationTradeFamily named MedicationTradeFamily 0..1
* extension[MedicationTradeFamily] ^short = "Used to identify a Trade Family or brand associated with a Medication, specifically when the medication is defined using a dm+d Virtual Therapeutic Moiety (VTM) concept"
* extension[MedicationTradeFamily] ^definition = "A Trade Family or brand associated with a Medication, in particular a Virtual Therapeutic Moiety (VTM)."
* code 1.. MS
* code from UKCore-MedicationCode (preferred)
* code ^short = "Codes that identify this medication"
* form from UKCore-MedicationForm (preferred)

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Medication"