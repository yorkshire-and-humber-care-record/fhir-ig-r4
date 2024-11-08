Status: DRAFT: For Review

**Definition:** Active information or a warning, about a patient or their situation, which may affect how their care or support is delivered.

### **Introduction**

This profile sets out the expectations for the interweave Flag resource. We use the [Flag](http://hl7.org/fhir/R4/flag.html) structure definition as a base to this profile.

***NB: Whilst the term "Patient" is used by FHIR, the profile is equally relevant to a "citizen", "service user" or "client" in other contexts such as Social Care.***

This profile sets minimum expectations for the Flag resource.

### **Coverage and references**

- Data Providers MUST offer Social Care Flag FHIR resources to represent flags against its own patients.
- Only active / inactive flags should be made available for consumption.
- When referencing a Flag then the "reference" (URL of FHIR Resource) and "display" (The Flag type.display) MUST be populated.

#### **Mandatory fields**
The following fields are mandatory:
- **status** only flags which are currently active and/or inactive flags that could benefit clinicians / users against a person should be shared. 

- **category** this provides a level of categorisation, i.e. Risk to others, Risk to self, safeguarding concern, leagal status of the patient and other. This should always be known and is vital for meaningful display purposes. Here We have defined a custom code list for the most common categories of flags used by Social Care. We fully expect that this list will need to be extended for use by healthcare providers. If you need further categories considering, please get in touch. 

- **code** code is used to record the type of flag assigned to a patient. Here we specify a preferred list which was developed for Social Care. Again we expect that this list will need to expand to cater for healthcare providers. Please get in touch should you required further 'flag types' adding.

code.text SHOULD be populated with the local name of the flag, this is not a repeat of the code.display, and this field MUST be populated to further describe the flag when ‘Other’ is selected as the type. 

- **subject** The patient to which the flag is assigned.

#### **Must Support fields**
In addition, the following fields are "Must Support" - i.e. they must be populated if relevant and known:

- **period.start** period.start should be populated with the date that the flag was placed against the patient.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Optional fields to note include:

- **identifier:localIdentfier** - As with most other resources, there is the option to include a local identifier which may help to identify the flag record at a local level.

- **author** option to provide a link to the practitioner or organisation which placed the flag against the patient.

#### **Discouraged or Removed fields**
     
- **encounter** - removed