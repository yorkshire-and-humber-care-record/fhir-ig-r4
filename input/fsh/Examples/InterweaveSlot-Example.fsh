Alias: $sct = http://snomed.info/sct
Alias: $UKCore-PracticeSettingCode = https://fhir.hl7.org.uk/CodeSystem/UKCore-PracticeSettingCode
Alias: $v2-0276 = http://terminology.hl7.org/CodeSystem/v2-0276

Instance: InterweaveSlotExample-AvailableWalkInVisit
InstanceOf: InterweaveSlot
Description: "Interweave Slot Example - AvailableWalkInVisit"

* insert Ruleset-ExampleMetaForHospital(Slot)

* identifier.system = "https://tools.ietf.org/html/rfc4122"
* identifier.value = "4cc18add-5160-49bb-9995-0d0759751f8d"

* serviceCategory = $sct#788007007 "General practice service"

* serviceType = $sct#708190004 "Immunology service"

* specialty = $UKCore-PracticeSettingCode#313 "Clinical Immunology"

* appointmentType = $v2-0276#WALKIN "A previously unscheduled walk-in visit"

* schedule = Reference(InterweaveScheduleExample-Immunization)

* status = #free

* start = "2024-12-20T11:20:00+07:00"
* end = "2024-12-20T11:40:00+07:00"

* comment = "Assessments should be performed before requesting appointments in this slot."