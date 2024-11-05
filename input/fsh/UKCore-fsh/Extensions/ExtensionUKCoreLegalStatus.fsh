Extension: ExtensionUKCoreLegalStatus
Id: Extension-UKCore-LegalStatus
Title: "Extension UK Core Legal Status"
Description: "Information relating to a patient's legal status on admission or discharge."
Context: Encounter
* ^version = "1.2.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Encounter Resource to support the exchange of information relating to a patient's legal status on admission or discharge."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    legalStatusContext 1..1 and
    legalStatusClassification 1..1
* extension[legalStatusContext] ^short = "The context of the legal status."
* extension[legalStatusContext] ^definition = "The context of the legal status in which a mental health legal status is being used."
* extension[legalStatusContext].value[x] 1..
* extension[legalStatusContext].value[x] only CodeableConcept
* extension[legalStatusContext].value[x] from UKCore-LegalStatusContext (extensible)
* extension[legalStatusContext].value[x] ^short = "The context in which a mental health legal status is being used."
* extension[legalStatusContext].value[x] ^definition = "The context in which a mental health legal status is being used."
* extension[legalStatusContext].value[x] ^binding.description = "A set of codes that define the context in which a mental health legal status is being used."
* extension[legalStatusClassification] ^short = "The classification of a patient's legal status."
* extension[legalStatusClassification] ^definition = "The classification of a patient's legal status, which is either informal or as designated in the Mental Health Act 1983 or other acts."
* extension[legalStatusClassification].value[x] 1..
* extension[legalStatusClassification].value[x] only CodeableConcept
* extension[legalStatusClassification].value[x] from UKCore-LegalStatusClassification (extensible)
* extension[legalStatusClassification].value[x] ^short = "Codes that define the classification of a patient's legal status"
* extension[legalStatusClassification].value[x] ^binding.description = "A set of codes that define the classification of a patient's legal status which is either informal or as designated in the Mental Health Act 1983 or other acts."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-LegalStatus"