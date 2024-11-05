Profile: InterweaveServiceRequest
Parent: UKCore-ServiceRequest
Id: Interweave-ServiceRequest
Description: "Interweave ServiceRequest resource profile - DRAFT."
Title: "InterweaveServiceRequest"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

// Identifier:
// This is a business identifier for the Service Request.
// The value for a local identifier must be populated and contain the internal id for this Service Request on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier MS
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(serviceRequest)

* insert Ruleset-CodingWithSystemCodeDisplay(category)

* intent = #order (exactly)

* authoredOn 1..1

* subject.id 0..0
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)


* encounter MS
* encounter only Reference(Interweave-Encounter)

* locationReference only Reference(Interweave-Location)
///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* replaces 0..0
* requisition 0..0
* quantity[x] 0..0
* occurrence[x] 0..0
* category[genomicsWholeCaseSequencing] 0..0
* locationCode 0..0
* insurance 0..0
* relevantHistory 0..0
* orderDetail 0..0

///////////////////////////////////////
// --- Discouraged fields ---
///////////////////////////////////////


// *************************************************************************************************************************
// EXAMPLES
// *************************************************************************************************************************
