Status: DRAFT: For Review

### **Introduction**

This profile sets minimum expectations for the Observation resource. We use the [observation](https://simplifier.net/hl7fhirukcorer4/ukcore-observation) structure definition as a base to this profile.

This Resource will give the consumer the ability to see information on observations used for tracking any current and historical health observations recorded in a numberical value that have been made for a patient.

At its core, Observation allows expressing a name-value pair or structured collection of name-value pairs. The Observation resource provides measurements or simple assertions  Examples of common observations are: Laboratory results (blood sugar, hemoglobin), Vital signs (temperature, blood pressure), Personal characteristics (height, weight), and Social history (tobacco/alcohol use, employment status). Pathology reports, radiology reports, and other textual reports should be represented by the DiagnosticReport resource.

This profile sets out the expectations for the interweave observation resource. Our profile models measurements and simple assertions about a patient that are useful for establishing baselines or trends, monitoring a patient’s progress, and establishing diagnoses. Most observations are simple name/value pair assertions but some observations, such as blood pressure, group other observations together logically. Modelling observations can be quite complex. This is due to the way in which result formats vary for the different types of observation. In line with UK Core, this has led us to design specific profiles for the some of the most commonly recorded/shared observation types such as blood pressure; heart rate; NEWS 2 score etc (see the artifacts section for the full list). We are aware at that we will not have modelled every type of observation, if you identify a type of observation, which you believe requires a specific profile, then please get in touch.

This profile can be used to represent observations which are perhaps less common or were no specific profile exists and is under development. But the “type” specific profiles should be used where possible, to aid the data consumer. 

Only finalised observations should be provided for the shared care record.


#### **Mandatory fields**
The following mandatory fields are defined:

1. **status** –  We use the required binding for the observation status. As stated in the introduction, only finalised observations should be shared. We do also allow for amendments and corrections to the final observation to take place. We therefore limit the list of statuses which can be used to the following - final; amended; corrected

2. **category** – The classification of the type of observation e.g. exam, survey, vital-signs etc. We require that the FHIR Observation category is always populated. There is also an option to provide additional local categories to enable FHIR searching on local categories. 

3. **code** – This is the type of observation. We state a preferred binding on this field of the SNOMED concept: 363787002 (observable entity). This is in recognition of the large amount of local code sets which are currently in use and the difficulties which data providers may have mapping their local codes to SNOMED. Should you wish to use a local code set to populate this field, as detailed in the conformance section of this implementation guide, you must contact us for explicit approval to do so.

4. **subject** – Every observation must be linked to a patient.

5. **effective** – An important field to provide details of the time/time period during which the observation was taken.


#### **Must Support fields**
In addition the following fields are "Must Support" - ie they must be populated if relevant and known. 

1. **identifier** - A Local Id should be provided, such that could be quoted if manually getting in touch to find out more.

2. **encounter** – This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests). For some observations it may be important to know the link between an observation and a particular encounter.

3. **performer** - We limit this field to reference practitioner / practitionerRole/ CareTeam resources only. The organization responsible for the observation can be obtained via the provenance tag.

4. **value[x]** – Is used to house simple results. We cannot make the field mandatory, as there maybe occasions where a result is missing (see dataAbsentReason below) or the result may be housed within the component field instead.

5. **dataAbsentReason** - The reason why the result is missing, this is valuable if a value has not been obtained for some reason e.g. a patient refused. This field can only be provided when there is no value present.

6. **interpretation** - This is also known as the ‘abnormal flag’ and is regularly recorded alongside the actual result. It is used to signal the meaning of the result.

7. **note** - Comments in addition to the result are often recorded for observations, it is therefore important to provide this field when available to give the consumer the full result information.

8. **bodySite** - A long list of SNOMED codes which represent the observed parts of the body.

9. **referenceRange** - To aid the interpretation of a result, it is important to include the reference range.

10. **component** – The component field is used to house multiple code/value pairs which make up a single result, such as systolic and diastolic measurements which in combination represent blood pressure.  If the display order of values held in the component field has importance, then they should be provided in the order in which they should be displayed. 

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Points of note include:

 - **method** – Option to provide the mechanism used to perform the observation.

 - **specimen** – Opportunity to provide a link to a specimen resource from which the observation was obtained.

 - **device** – Opportunity to provide a link to a device resource from which was used to obtain the observation.

 - **derivedFrom** – To reduce complexity, we limit the related field’s usage to only allow links to observation / Questionnaire Response resources, from which the primary observation’s value was derived. E.g. An observation may have a value which is a score, and that score may have been derived from several other observations.
 
 - **bodyStructureR5** (extension) - Indicates the body structure on the subject's body where the observation was made (i.e. the target site). This is a R5 backport.

 - **valuePrecision** (extension) – We use the FHIR precision extension (Extension: precision - FHIR v4.3.0 (hl7.org)) to allow the decimal precision of a result value to be provided where it is of importance. This extension will also be available within the component field.
 
#### **Discouraged or Removed fields**

- **basedOn** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

- **partOf** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

- **issued** –  This field has been removed as this information can be taken from the mandatory meta.lastUpdated field, and to also avoid any confusion with the other date fields.

- **focus** - Removed.