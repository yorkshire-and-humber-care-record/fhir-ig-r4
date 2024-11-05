// Alias: $UKCore-ProcedureCode = https://fhir.hl7.org.uk/ValueSet/UKCore-ProcedureCode
// Alias: $UKCore-ConditionCode = https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCode

Profile: UKCoreProcedure
Parent: Procedure
Id: UKCore-Procedure
Title: "UK Core Procedure"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Procedure](https://hl7.org/fhir/R4/Procedure.html)."
* ^version = "2.5.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of details of current and historical procedures performed on or for an individual. A procedure is an activity that is performed on, with, or for an individual as part of the provision of care. Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counselling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modification, exercise, etc. Procedures may be performed by a healthcare professional, a service provider, a friend or relative or in some cases by themselves."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* status MS
* status ^short = "A code specifying the state of the procedure."
* code MS
* code from UKCore-ProcedureCode (preferred)
* code ^short = "A code identifying the procedure performed."
* code ^binding.description = "A code from the SNOMED Clinical Terminology UK."
* subject MS
* subject ^short = "Who the procedure was performed on."
* performed[x] MS
* performed[x] ^short = "When the procedure was performed."
* bodySite ^binding.strength = #preferred
* complication from UKCore-ConditionCode (preferred)
* complication ^binding.description = "A code from the SNOMED Clinical Terminology UK with the expression (<404684003 |Clinical finding| OR <413350009 |Finding with explicit context| OR <272379006 |Event|)."