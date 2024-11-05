Profile: InterweaveSchedule
Parent: UKCore-Schedule
Id: Interweave-Schedule
Description: "Interweave Schedule resource profile - DRAFT."
Title: "InterweaveSchedule"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

///////////////////////////////////////
// --- MANDATORY FIELDS ---
///////////////////////////////////////
//* identifier 1..1 MS
* identifier.assigner only Reference(Interweave-Organization)

* active 1..1

* actor 1..* MS

// Service Type: A list of types of service for the appointment eg "Cardiology Service", “School Nursing Service" etc
//    Appears to be possible, useful and important to populate. (Could be multiple??)
//    We also want to pre-adopt this value set from UK Core which is better than the original FHIR suggestion
//    (More relevant to UK and better coverage of social care)
//    It is based on SNOMED refset 1127531000000102: Services Simple Reference Set
* serviceType 1..* MS
* serviceType from UKCore-CareSettingType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(serviceType)

* planningHorizon 1..1 MS
* planningHorizon ^short = "The period of time that the slots that are attached to this Schedule resource cover (even if none exist). These cover the amount of time that an organization's planning horizon; the interval for which they are currently accepting appointments. This does not define a template for planning outside these dates."
* planningHorizon.start 1..1 MS

///////////////////////////////////////
// --- OPTIONAL FIELDS ---
///////////////////////////////////////
// Service Category: In FHIR this is a short list of broad categories at a higher-level then Service Type
* serviceCategory 0..1
* serviceCategory from http://hl7.org/fhir/ValueSet/service-category (preferred)

* specialty from https://fhir.hl7.org.uk/ValueSet/UKCore-PracticeSettingCode (required)
* insert Ruleset-CodingWithSystemCodeDisplay(specialty)

* identifier.id 0..0
* identifier.extension 0..0

* serviceType.id 0..0
* serviceType.extension 0..0
* serviceType.coding.id 0..0
* serviceType.coding.extension 0..0

* planningHorizon.id 0..0
* planningHorizon.extension 0..0

* specialty.id 0..0
* specialty.extension 0..0
* specialty.coding.id 0..0
* specialty.coding.extension 0..0