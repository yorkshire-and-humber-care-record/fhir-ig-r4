Alias: $extension-Observation.triggeredBy = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
Alias: $extension-Observation.bodyStructure = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure
//Alias: $UKCore-ObservationType = https://fhir.hl7.org.uk/ValueSet/UKCore-ObservationType

Profile: UKCoreObservation
Parent: Observation
Id: UKCore-Observation
Title: "UK Core Observation"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Observation](https://hl7.org/fhir/R4/Observation.html)."
* ^version = "2.5.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of information of Measurements and simple assertions made about an individual, device or other subject.\r\n\r\nNote: this profile SHALL NOT be used where a more specific UK Core profile exists."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    $extension-Observation.triggeredBy named triggeredByR5 0..* and
    $extension-Observation.bodyStructure named bodyStructureR5 0..1
* extension[triggeredByR5] ^short = "Triggering observation(s). This is a R5 backport."
* extension[triggeredByR5].extension[observation] ^sliceName = "observation"
* extension[triggeredByR5].extension[observation].value[x] ^short = "Triggering observation."
* extension[triggeredByR5].extension[observation].value[x] ^definition = "A reference to the triggering observation."
* extension[triggeredByR5].extension[type] ^sliceName = "type"
* extension[triggeredByR5].extension[type].value[x] ^short = "The type of trigger. Reflex | Repeat | Re-run"
* extension[triggeredByR5].extension[type].value[x] ^definition = "The type of trigger. Reflex | Repeat | Re-run"
* extension[triggeredByR5].extension[reason] ^sliceName = "reason"
* extension[triggeredByR5].extension[reason].value[x] ^short = "Reason that the observation was triggered."
* extension[triggeredByR5].extension[reason].value[x] ^definition = "Provides the reason why this observation was performed as a result of the observation referenced."
* extension[bodyStructureR5] ^short = "Observed body structure. This is a R5 backport."
* status MS
* status ^short = "The status of the result value."
* category MS
* category ^short = "A code that classifies the general type of observation being made."
* code MS
* code from UKCore-ObservationType (preferred)
* code ^short = "The type of observation (code / type)."
* code ^binding.description = "A code from the SNOMED Clinical Terminology UK coding system describing a type of observation"
* subject MS
* subject ^short = "Who and / or what the observation is about."
* effective[x] MS
* effective[x] ^short = "A clinically relevant time / time-period for observation."
* performer MS
* performer ^short = "Who is responsible for the observation."
* value[x] MS
* value[x] ^short = "The actual observed result."
* bodySite ^binding.strength = #preferred
* method ^binding.strength = #preferred
* component MS
* component ^short = "Component / sub results."
* component.code from UKCore-ObservationType (preferred)
* component.code ^binding.description = "A code from the SNOMED Clinical Terminology UK coding system describing a type of observation"

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation"