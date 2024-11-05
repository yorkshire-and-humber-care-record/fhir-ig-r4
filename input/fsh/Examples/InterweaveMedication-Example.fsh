Alias: $dmd = https://dmd.nhs.uk
Alias: $sct = http://snomed.info/sct

Instance: InterweaveMedicationExample-COVIDVaccine
InstanceOf: InterweaveMedication
Description: "Interweave Medication Example - COVID Vaccine"

* insert Ruleset-ExampleMetaForHospital(Medication)

* code = $dmd#39115611000001103 "Comirnaty COVID-19 mRNA Vaccine 30micrograms/0.3ml dose concentrate for dispersion for injection multidose vials (Pfizer Ltd)"

* batch.lotNumber = "FK0112"
* batch.expirationDate = "2024-10-26"

/////////////////////////////////////////////////////////////////////////

Instance: InterweaveMedicationExample-Paracetamol
InstanceOf: InterweaveMedication
Description: "Interweave Medication Example - Paracetamol"

* insert Ruleset-ExampleMetaForHospital(Medication)

* code = $dmd#24650811000001104 "Paracetamol 500mg tablets (Sigma Pharmaceuticals Plc)"

* form = $sct#385055001 "Tablet"

* batch.lotNumber = "FK011GHR2"
* batch.expirationDate = "2026-10-26"

/////////////////////////////////////////////////////////////////////////

Instance: InterweaveMedicationExample-Panadol
InstanceOf: InterweaveMedication
Description: "Interweave Medication Example - Panadol"

* insert Ruleset-ExampleMetaForHospital(Medication)

* extension.url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-MedicationTradeFamily"
* extension.valueCodeableConcept = $sct#9298001000001101 "Panadol Extra"

* code = $dmd#18677911000001109 "Panadol Extra Advance 500mg/65mg tablets (Haleon UK Trading Ltd)"

* form = $sct#385055001 "Tablet"

* batch.lotNumber = "FK0561GHR2"
* batch.expirationDate = "2026-11-26"