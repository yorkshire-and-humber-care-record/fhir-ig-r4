Alias: $UKCore-NHSNumberVerificationStatusEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland
Alias: $UKCore-NHSNumberVerificationStatusWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales

ValueSet: UKCoreNHSNumberVerificationStatus
Id: UKCore-NHSNumberVerificationStatus
Title: "UK Core NHS Number Verification Status"
Description: "A set of codes that indicate the trace status of an NHS Number with respect to a national source of NHS Numbers. \r\r  \r Where there is no information about the trace status available, a specific code from the nullFlavor Code System can be used instead to indicate this."
* ^version = "2.2.0"
* ^status = #active
* ^date = "2022-08-26"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "0b1f8226-afc8-49e6-a7f7-e945cdb24521"
* ^expansion.timestamp = "2022-10-19T14:08:35+00:00"
* ^expansion.total = 18
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 1000
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #01
* ^expansion.contains[=].display = "Number present and verified"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #02
* ^expansion.contains[=].display = "Number present but not traced"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #03
* ^expansion.contains[=].display = "Trace required"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #04
* ^expansion.contains[=].display = "Trace attempted - No match or multiple match found"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #05
* ^expansion.contains[=].display = "Trace needs to be resolved - (NHS number or patient detail conflict)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #06
* ^expansion.contains[=].display = "Trace in progress"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #07
* ^expansion.contains[=].display = "Number not present and trace not required"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #08
* ^expansion.contains[=].display = "Trace postponed (baby under six weeks old)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #nn
* ^expansion.contains[=].display = "Number present and traced using Welsh NHS AR"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #01
* ^expansion.contains[=].display = "Number present & traced"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #02
* ^expansion.contains[=].display = "Number present but not traced"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #03
* ^expansion.contains[=].display = "Trace required"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #04
* ^expansion.contains[=].display = "Trace attempted – no match or multiple match found"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #05
* ^expansion.contains[=].display = "Trace needs to be resolved (NHS number or patient detail conflict)"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #06
* ^expansion.contains[=].display = "Trace in progress"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #07
* ^expansion.contains[=].display = "Number not present and trace not required"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusWales"
* ^expansion.contains[=].version = "1.1.0"
* ^expansion.contains[=].code = #08
* ^expansion.contains[=].display = "Trace postponed (baby under six weeks old)"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* ^expansion.contains[=].version = "2018-08-12"
* ^expansion.contains[=].code = #NI
* ^expansion.contains[=].display = "NoInformation"
* include codes from system UKCore-NHSNumberVerificationStatusEngland
* include codes from system $UKCore-NHSNumberVerificationStatusWales
* NullFlavor#NI "NoInformation"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-NHSNumberVerificationStatus"

CodeSystem: UKCoreNHSNumberVerificationStatusEngland
Id: UKCore-NHSNumberVerificationStatusEngland
Title: "UK Core NHS Number Verification Status England"
Description: "A CodeSystem for England that identifies the trace status of an NHS Number with respect to a national source of NHS Numbers. These codes and their descriptions represent concepts used in England and are copied from the content of the [NHS Data Dictionary NHS Number Status Indicator code](https://www.datadictionary.nhs.uk/data_elements/nhs_number_status_indicator_code.html) web page on 22/12/2022."
* ^version = "1.1.1"
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
* ^caseSensitive = true
* ^content = #complete
* #01 "Number present and verified"
* #02 "Number present but not traced"
* #03 "Trace required"
* #04 "Trace attempted - No match or multiple match found"
* #05 "Trace needs to be resolved - (NHS number or patient detail conflict)"
* #06 "Trace in progress"
* #07 "Number not present and trace not required"
* #08 "Trace postponed (baby under six weeks old)"

* ^url = "https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland"