Profile: InterweaveDocumentReference
Parent: DocumentReference
Id: Interweave-DocumentReference
Description: "Interweave DocumentReference resource profile - DRAFT."
Title: "InterweaveDocumentReference"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* masterIdentifier.assigner only Reference(Interweave-Organization)

// Identifier:
// This is a business identifier for the document.
// The value for a local identifier must be populated and contain the internal id for this document on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(documentreference)
* identifier[localIdentifier].assigner only Reference(Interweave-Organization)

// Status and docStatus
// Status is already mandatory in FHIR (challenge may be accurately populating it with anything other than "current")
// Add docStatus for useful additional information about the document (will normally just be "final")
* status MS
* docStatus 1..1 MS

// Type - very important field to identify the type of document (already mandatory in FHIR)
// Much discussion about this, and DADA proposed list of SNOMED codes selected for now
// However it is still a controversial area, and does not yet feel appropriate to prescibe more than "preferred"
* type 1..1 MS 
* type ^short = "Type of document"
* type from InterweaveDocumentType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(type)

* insert Ruleset-CodingWithSystemCodeDisplay(category)
* category from http://hl7.org/fhir/ValueSet/document-classcodes (preferred)

// Subject - mandatory, and must refer to a patient
* subject 1..1 MS
* subject ^short = "Who is the subject of the document"
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)

* date 1..1 MS

// Author - MS
// Preferably we really want exactly one author - the main practitioner involved and who should be contacted
// There are potentially many other scenarios for collaborative document authoring, so leave open wider possibilities
// But explain in words what we want
* author MS
* author ^short = "Who and/or what authored the document. NB: For most use-cases this should contain a single practitioner who is the main contact for any further questions"
* insert Ruleset-ReferenceWithReferenceAndDisplay(author)

// Custodian
* custodian ^short = "DISCOURAGED - this information is already covered by the provenance tags"

// Relates to
// Potentially useful to link documents, but unlikely to be any behaviour in consumer systems to honour it
* relatesTo ^short = "DISCOURAGED - use with great caution as consumer systems are likely to display a simple list of documents, and may not interpret these relationships"

// Description - leave optional
* description ^short = "Human-readable description (title). Useful to populate, but acceptable to omit if nothing to add over-and-above the 'type'"

// Security label
* securityLabel ^short = "DISCOURAGED - unlikely to be honoured by consumers"

// And then we have the "context" structure with numerous fields:
//  Encounter (MS) It is extremely useful to link documents back to the encounter they relate to
* context.encounter MS
* context.encounter only Reference(Interweave-Encounter)
* insert Ruleset-ReferenceWithReferenceOnly(context.encounter)

//  Period (MS) A document may related to a period of time (eg a care plan for the coming 6 months). 
//     Where this is the case then this field must be populated
* context.period MS

// Context.Related - discouraged for now, stick with Encounter - to reconsider given specific use cases
* context.related ^short = "DISCOURAGED - see above for linkage to Encounter. Other linkages may be defined in future only if use-cases arise"

* context.practiceSetting from UKCoreCareSettingType (preferred)

// And finally the actual content. This and the attachment are already mandatory in FHIR, and we also need the content type
* content MS
* content.attachment MS
* content.attachment.contentType 1..1 MS
* content.attachment.creation MS

* context.sourcePatientInfo 0..0

* masterIdentifier.id
* masterIdentifier.extension
* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0
* category.id 0..0
* category.extension 0..0
* category.coding.id 0..0
* category.coding.extension 0..0
* subject.id 0..0
* subject.extension 0..0
* author.id 0..0
* author.extension 0..0
* relatesTo.id 0..0
* relatesTo.extension 0..0
* content.id 0..0
* content.extension 0..0
* content.attachment.id 0..0
* content.attachment.extension 0..0
* context.id 0..0
* context.extension 0..0
* context.encounter.id 0..0
* context.encounter.extension 0..0