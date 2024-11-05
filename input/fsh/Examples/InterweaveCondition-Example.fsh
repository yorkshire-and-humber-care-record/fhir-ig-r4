Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct

Instance: InterweaveConditionExample-BleedingFromEar
InstanceOf: InterweaveCondition
Description: "Interweave Condition example-BleedingFromEar"

* insert Ruleset-ExampleMetaForHospital(Condition)

* insert Ruleset-ExampleLocalId(condition, RCB.COND-456-XYZ)

* clinicalStatus = $condition-clinical#active "Active"

* verificationStatus = $condition-ver-status#confirmed "Confirmed"

* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"

* code = $sct#26322001 "Bleeding from ear"

* subject = Reference(InterweavePatientExample-MustSupport)
* subject.display = "Jane BLOGGS"

* encounter = Reference(InterweaveEncounterExample-Emergency-Inprogress)

* recordedDate = "2024-10-08T11:03:00Z"

* asserter = Reference(InterweavePractitionerExample-Consultant)
* asserter.display = "Dr Jane BLOGGS"