///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Examples
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Instance: InterweaveOperationOutcomeExample
InstanceOf: InterweaveOperationOutcome
Description: "Interweave Operation Outcome example"

* meta.lastUpdated = "2022-02-01T09:37:00Z"
* meta.profile[0] = "https://fhir.interweavedigital.nhs.uk/R4/StructureDefinition/Interweave-OperationOutcome"
* meta.versionId = "InterweaveOperationOutcomeExample-v1.0.0"

* meta.tag[0] =  https://fhir.interweavedigital.nhs.uk/Source#ABC-01 "Acme Ltd Data Systems"
* meta.tag[1] =  https://fhir.interweavedigital.nhs.uk/Provenance#RCB "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* meta.tag[2] =  https://fhir.interweavedigital.nhs.uk/RequestId#8abf429f-3eab-4c38-b4af-911505568874


* issue.severity = #error
* issue.code = #timeout

* issue.details.text = "The query was abandoned as it took more than 2 seconds"

* issue.diagnostics = "timout exceeded 2000ms: module main, instance bk34243rs, line 57: Respond socket: LoadFHIR: PopulateTags"