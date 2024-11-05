Instance: InterweaveOrganization4to3
InstanceOf: StructureMap
Usage: #definition
* url = "https://fhir.interweavedigital.nhs.uk/R4/StructureMap/InterweaveOrganization4to3"
* name = "Transform for Interweave Organization R4 to STU3"
* status = #draft
* structure[0].url = "https://fhir.interweavedigital.nhs.uk/R4/StructureDefinition/Interweave-Organization"
* structure[=].mode = #source
* structure[0].url = "https://fhir.yhcr.nhs.uk/StructureDefinition/Interweave-Organization"
* structure[=].mode = #target
* group.name = "main"
* group.typeMode = #none
* group.input[0].name = "source"
* group.input[=].type = "Organization"
* group.input[=].mode = #source
* group.input[+].name = "target"
* group.input[=].type = "Organization"
* group.input[=].mode = #target
* group.rule[0].name = "active"
* group.rule[=].source.context = "source"
* group.rule[=].source.element = "active"
* group.rule[=].source.variable = "a"
* group.rule[=].target.context = "target"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "active"
* group.rule[=].target.transform = #copy