ValueSet: UKCoreResidentialStatus
Id: UKCore-ResidentialStatus
Title: "UK Core Residential Status"
Description: "A set of codes that define the residential status of a patient with regard to the UK."
* ^version = "2.1.0"
* ^status = #active
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "7c6b6561-0f1a-4ee3-9358-cb7ea299f513"
* ^expansion.timestamp = "2021-09-10T07:42:15+00:00"
* ^expansion.total = 2
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ResidentialStatus|2.1.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ResidentialStatus"
* ^expansion.contains[=].code = #O
* ^expansion.contains[=].display = "Overseas Resident"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ResidentialStatus"
* ^expansion.contains[=].code = #H
* ^expansion.contains[=].display = "UK Resident"
* include codes from system UKCore-ResidentialStatus

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-ResidentialStatus"


CodeSystem: UKCoreResidentialStatus
Id: UKCore-ResidentialStatus
Title: "UK Core Residential Status"
Description: "A CodeSystem that identifies the residential status of a patient."
* ^version = "2.1.0"
* ^status = #active
* ^date = "2021-09-10"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^caseSensitive = true
* ^content = #complete
* #H "UK Resident"
* #O "Overseas Resident"

* ^url = "https://fhir.hl7.org.uk/CodeSystem/UKCore-ResidentialStatus"