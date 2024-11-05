ValueSet: InterweaveEDDischargeDestination
Id: Interweave-EDDischargeDestination
Title: "InterweaveEDDischargeDestination"
Description: "Defines the set of codes that can be used to recording the discharge destination of patients which have attended ED."
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^name = "InterweaveEDDischargeDestination"
* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

* include codes from system SNOMED_CT 
            where concept is-a #999003011000000105 // Emergency Care Discharge Destination