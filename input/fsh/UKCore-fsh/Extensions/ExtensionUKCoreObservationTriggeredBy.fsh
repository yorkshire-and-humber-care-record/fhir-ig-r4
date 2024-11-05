Alias: $observation-triggeredbytype = http://hl7.org/fhir/ValueSet/observation-triggeredbytype

Extension: ExtensionUKCoreObservationTriggeredBy
Id: Extension-UKCore-ObservationTriggeredBy
Title: "Extension UK Core Observation Triggered By"
Description: "This extension supports the sharing of the observation(s) that triggered the performance of the main observation."
Context: Observation
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* ^version = "1.1.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This is a Pathology use case to backport R5 functionality to identify the observation(s) that triggered the performance of this observation."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "Triggering observation(s)"
* . ^definition = "Identifies the observation(s) that triggered the performance of this observation."
* extension contains
    observation 1..1 and
    type 1..1 and
    reason 0..1
* extension[observation] ^short = "Triggering observation"
* extension[observation] ^definition = "Reference to the triggering observation."
* extension[observation].value[x] 1..
* extension[observation].value[x] only Reference(Observation)
* extension[type].value[x] from $observation-triggeredbytype (required)
* extension[type] ^short = "reflex | repeat | re-run"
* extension[type] ^definition = "The type of trigger. Reflex | Repeat | Re-run."
* extension[type].value[x] 1..
* extension[type].value[x] only code
* extension[reason] ^short = "Reason that the observation was triggered"
* extension[reason] ^definition = "Provides the reason why this observation was performed as a result of the observation(s) referenced."
* extension[reason].value[x] 1..
* extension[reason].value[x] only string

* url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy" (exactly)