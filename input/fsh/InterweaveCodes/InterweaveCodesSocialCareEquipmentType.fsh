ValueSet: InterweaveSocialCareEquipmentType
Id: Interweave-SocialCareEquipmentType
Description: "Defines the set of codes that can be used to identify the type of equipment which has been placed with a person."
Title: "InterweaveSocialCareEquipmentType"
* ^name = "InterweaveSocialCareEquipmentType"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

* include codes from system SNOMED_CT where concept is-a #272243001 // Support Equipment
* include codes from system SNOMED_CT where concept is-a #390296002  // Assistive Equipment
* include codes from system SNOMED_CT where concept is-a #183135000 // Equipment to Aid Mobility