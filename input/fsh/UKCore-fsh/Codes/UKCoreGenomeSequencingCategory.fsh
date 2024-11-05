Alias: $UKCore-GenomeSequencingCategory = https://fhir.hl7.org.uk/CodeSystem/UKCore-GenomeSequencingCategory

ValueSet: UKCoreGenomeSequencingCategory
Id: UKCore-GenomeSequencingCategory
Title: "UK Core Genome Sequencing Category"
Description: "A set of codes that define if the service request is for Whole Genome Sequencing (WGS)/non-WGS Rare Disease/Cancer."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-04-28"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "bde2a094-9417-4687-8f15-6f93fb38b26b"
* ^expansion.timestamp = "2023-05-04T14:47:02+00:00"
* ^expansion.total = 4
* ^expansion.offset = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-GenomeSequencingCategory"
* ^expansion.contains[=].code = #rare-disease-wgs
* ^expansion.contains[=].display = "Rare Disease - WGS"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-GenomeSequencingCategory"
* ^expansion.contains[=].code = #rare-disease-non-wgs
* ^expansion.contains[=].display = "Rare Disease - Non-WGS"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-GenomeSequencingCategory"
* ^expansion.contains[=].code = #cancer-wgs
* ^expansion.contains[=].display = "Cancer - WGS"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-GenomeSequencingCategory"
* ^expansion.contains[=].code = #cancer-non-wgs
* ^expansion.contains[=].display = "Cancer - Non-WGS"
* include codes from system $UKCore-GenomeSequencingCategory

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-GenomeSequencingCategory"