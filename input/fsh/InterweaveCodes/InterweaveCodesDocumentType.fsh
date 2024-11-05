ValueSet: InterweaveDocumentType
Id: Interweave-DocumentType
Title: "InterweaveDocumentType"
Description: "A code from the SNOMED Clinical Terminology UK coding system that describes a clinical document type."
* ^name = "InterweaveDocumentType"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

// UK Core uses 1127551000000109 (Record composition type simple reference set (foundation metadata concept)), 
// The reference set covers varied category of codes including care Plans, we limit these using
// this alternative set of codes (EHR Composition Types) recommended by DADA
* include codes from system SNOMED_CT where constraint is-a #24501000000105