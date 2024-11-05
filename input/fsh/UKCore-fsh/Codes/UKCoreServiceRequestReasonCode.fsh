ValueSet: UKCoreServiceRequestReasonCode
Id: UKCore-ServiceRequestReasonCode
Title: "UK Core Service Request Reason Code"
Description: "A set of codes that define a reason for a service request. Selected from the following hierarchies within the SNOMED CT UK coding system: \r - descendantOrSelfOf 404684003 | Clinical finding \r - descendantOrSelfOf 71388002 | Procedure \r - descendantOrSelfOf 272379006 | Event \r - descendantOrSelfOf 363787002 | Observable entity \r - descendantOrSelfOf 243796009 | Situation with explicit context"
* ^version = "1.1.0"
* ^status = #active
* ^date = "2022-12-16"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* include codes from system SNOMED_CT_INT
    where constraint = "descendantOrSelfOf 404684003 OR descendantOrSelfOf 71388002 OR descendantOrSelfOf 272379006 OR descendantOrSelfOf 363787002 OR descendantOrSelfOf 243796009"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-ServiceRequestReasonCode"