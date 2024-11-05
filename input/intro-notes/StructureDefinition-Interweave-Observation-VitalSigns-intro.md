Status: DRAFT: For Review

## **Introduction**
This profile sets out the expectations for the interweave vital signs observation resource. The base for this profile is the [CareConnect-VitalSigns-Observation-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-VitalSigns-Observation-1) and we have made little adjustment to this base profile by enforcing the use of SNOMED codes where possible. 

#### **Mandatory fields**
The following mandatory fields are defined:

1. **status** – Fixed value of ‘final’. Only finalised observations should be shared.

2. **category** – Fixed value of ‘vital-signs’.

3. **code** – This is the type of observation. UK Core has mendated a LOINC "magic code" describing the type of observation and set of SNOMED CT codes defined in UK Core Observation Vital Signs Type with preferred binding. Should you wish to use a local code set to populate SNOMED code, as detailed in the conformance section of this implementation guide, you must contact us for explicit approval to do so.

4. **subject** – Reference to the patient who is the subject of this measurement. 

5. **effective** – An important field to provide details of the time/time period during which the observation was taken.

#### **Must Support fields**
In addition the following fields are "Must Support" - ie they must be populated if relevant and known. 

1. **identifier** - A Local Id should be provided, such that could be quoted if manually getting in touch to find out more.

2. **encounter** – This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests). For some observations it may be important to know the link between an observation and a particular encounter.

3. **performer** - We limit this field to reference practitioner / practitionerRole/ CareTeam resources only. The organization responsible for the observation can be obtained via the provenance tag.

4. **valueQuantity** – Vital Sign Value recorded with UCUM. We cannot make the field mandatory, as there maybe occasions where a result is missing (see dataAbsentReason below) or the result may be housed within the component field instead.

5. **dataAbsentReason** - The reason why the result is missing, this is valuable if a value has not been obtained for some reason e.g. a patient refused. This field can only be provided when there is no value present.

6. **interpretation** - This is also known as the ‘abnormal flag’ and is regularly recorded alongside the actual result. It is used to signal the meaning of the result.

7. **note** - Comments in addition to the result are often recorded for observations, it is therefore important to provide this field when available to give the consumer the full result information.

8. **bodySite** - A long list of SNOMED codes which represent the observed parts of the body.

9. **referenceRange** - To aid the interpretation of a result, it is important to include the reference range.

10. **component** – The component field is used to house multiple code/value pairs which make up a single result, such as systolic and diastolic measurements which in combination represent blood pressure.  If the display order of values held in the component field has importance, then they should be provided in the order in which they should be displayed.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Points of note include:
 
 - **method** – Option to provide the mechanism used to perform the observation
 
 - **specimen** – Opportunity to provide a link to a specimen resource from which the observation was obtained.
 
 - **device** – Opportunity to provide a link to a device resource from which was used to obtain the observation.

 - **derivedFrom** – To reduce complexity, we limit the related field’s usage to only allow links to observation / Questionnaire Response resources, from which the primary observation’s value was derived. E.g. An observation may have a value which is a score, and that score may have been derived from several other observations.

  - **bodyStructureR5** (extension) - Indicates the body structure on the subject's body where the observation was made (i.e. the target site). This is a R5 backport.

 - **bodyPosition** (extension) - The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code.

 - **recordingSetting** (extension) - This extension allows the recording of the care setting in which an observation was performed in a clinical or non clinical setting.

 - **valuePrecision** (extension) – We use the FHIR precision extension (Extension: precision - FHIR v4.3.0 (hl7.org)) to allow the decimal precision of a result value to be provided where it is of importance. This extension will also be available within the component field.

#### **Discouraged or Removed fields**

 - **basedOn** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

 - **partOf** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.
 
 - **issued** –  This field has been removed as this information can be taken from the mandatory meta.lastUpdated field, and to also avoid any confusion with the other date fields.

 - **focus** - Removed.