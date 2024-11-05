ValueSet: InterweaveMedicationRequestStatusReason
Id: Interweave-MedicationRequestStatusReason
Title: "InterweaveMedicationRequestStatusReason"
Description: "Defines the set of codes that can be used to record the reason why and when a medication was stopped"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^name = "InterweaveMedicationRequestStatusReason"
* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

* include codes from system SNOMED_CT 
            where concept is-a #274512008 //  Drug therapy discontinued

* include codes from system http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason