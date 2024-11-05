ValueSet: UKCoreReportCode
Id: UKCore-ReportCode
Title: "UK Core Report Code"
Description: """A code from the SNOMED Clinical Terminology UK coding system that describes a diagnostic report. Selected from the following SNOMED CT UK coding system:
- descendantOrSelfOf 371525003 | Clinical procedure report"""
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-04-28"
* ^experimental = false
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* include codes from system SNOMED_CT_INT where constraint = "descendantOrSelfOf 371525003"