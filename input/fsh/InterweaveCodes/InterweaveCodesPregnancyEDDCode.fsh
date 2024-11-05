ValueSet: InterweavePregnancyEDDCode
Id: Interweave-PregnancyEDDCode
Description: "Pregnancy EDD code: A selection of relevant SNOMED CT codes."
Title: "InterweavePregnancyEDDCode"
* ^name = "InterweavePregnancyEDDCode"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

// R4 adds one more code to the standard FHIR STU3 list, to cater for social care
* SNOMED_CT#161714006  // Estimated date of delivery	
* SNOMED_CT#289206005  // Estimated date of delivery from last period
* SNOMED_CT#738070007  // Estimated date of delivery from antenatal ultrasound scan