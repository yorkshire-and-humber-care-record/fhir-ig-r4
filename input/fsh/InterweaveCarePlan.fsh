Profile: InterweaveCarePlan
Parent: CarePlan
Id: Interweave-CarePlan
Description: "Interweave CarePlan resource profile - DRAFT."
Title: "InterweaveCarePlan"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

// Identifier:
// This is a business identifier for the CarePlan.
// The value for a local identifier must be populated and contain the internal id for this carePlan on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(carePlan)
* identifier[localIdentifier].assigner only Reference(Interweave-Organization)

* category MS
* category from http://hl7.org/fhir/ValueSet/care-plan-category (preferred)

* subject 1..1 MS
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)
* subject ^short = "The patient whose characteristics (direct or indirect) are described by the observation and into whose record the observation is placed."

//   Will not be relevant to all Careplans (eg historical/migrated data), 
//   but should be populated if there is a relevant Encounter to link the Careplan to.
* encounter MS
* encounter only Reference(Interweave-Encounter)
* insert Ruleset-ReferenceWithReferenceOnly(encounter)

* period.start MS

* activity.detail 0..1 MS
* activity.detail.reasonCode from http://hl7.org/fhir/ValueSet/clinical-findings (preferred)

* created MS
///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////
* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* supportingInfo 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* contributor 0..0
* activity.detail.instantiatesCanonical 0..0
* activity.detail.instantiatesUri 0..0
* subject.id 0..0
* subject.extension 0..0
* encounter.id 0..0
* encounter.extension 0..0
* period.id 0..0
* period.extension 0..0
* activity.id 0..0
* activity.extension 0..0
* activity.detail.id 0..0
* activity.detail.extension 0..0