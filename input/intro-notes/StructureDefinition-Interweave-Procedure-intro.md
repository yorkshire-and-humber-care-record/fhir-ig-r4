Status: DRAFT: For Review

### **Introduction**
This profile sets minimum expectations for the Procedure resource. We use the [procedure](https://simplifier.net/hl7fhirukcorer4/ukcore-procedure) structure definition as a base to this profile.

This Resource will give consumer the ability to see information on a procedure. The procedure Resource will contain information that has been used to describe something that has actually been done to a Patient. There are other FHIR Resources which are more appropriate for observations, assessments, opinions etc.

The Procedure resource returns medical and surgical procedures performed on or for a patient. Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counseling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modification, exercise, verification of enrollment qualifications for a social program etc. Procedures may be performed by a healthcare professional, a service provider, a friend or relative or in some cases by the patient themselves.

It is also noted that a pragmatic approach is needed to specifying mandatory fields for this resource. The reality is that it may often be populated from a “clinical coding” system - that does not necessarily have access to the full contextual richness that might ideally be hoped for.


#### **Mandatory fields**
The following mandatory fields are defined in order to properly describe a Procedure:

1. **Status** - This is most likely to be “completed” to provide a historical list of procedures performed. However other codes about future or aborted procedures MAY be used where relevant – as long as they are kept up-to-date.
   - “unknown” should be avoided if at all possible

2. **Subject** - every Procedure must be linked to a Patient (not a Group)

3. **Code** - Essential to describe what the procedure actually is. Based on SNOMED codes eg "Excision of lesion of artery". The list from UkCore which aligns with PRSB standards and extends FHIR with extra codes for social care


#### **Must Support fields**
In addition the following fields are "Must Support" - ie they must be populated if relevant and known:

1. **Identifier** - a Local Id should be provided, such that could be quoted if manually getting in touch to find out more

2. **StatusReason** - relevent with status codes such as "suspended" or "aborted" to provide reason for suspension / aborting the procedure. 

3. **Category** - A simple and short list of SNOMED codes to describe the overall category of procedure eg “Surgical Procedure”, “Diagnostic Procedure”. We pre-adopt the R4 list which adds one extra code for "Social Service Procedure".

4. **Encounter** - A reference to the Encounter during which this Procedure was created or performed or to which the creation of this record is tightly associated. This is likely to be very useful and should be provided if at all possible. This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.

5. **Performed** - when the Procedure was performed. We have removed the DateTime data type from this field as Period.start would provide identical data, and it reduced the complexity of processing multiple data types for the data consumer.

6. **Body Site** - Useful to populate if known.

7. **Outcome** - A short and simple list of “successful”, “unsuccessful”, “partially successful”. Must be populated when relevant and known. (Accepting that for some types of procedure then this may be impossible if there is no simple definition of “success”)

8. **Focal Device** - This is useful to provide if relevant. A device that is implanted, removed or otherwise manipulated (including The kind of change that happened to the device during the procedure such as calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.This may inform community teams with follow up care.


#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. For a Procedure there are many of these optional fields. This reflects the view expressed in the introduction that there is considerable richness which could be added, but which it is not necessarily realistic to insist on. Points of note include:

  - **Performer** - Useful to provide if known, although it may be more relevant in some scenarios than others. For example some procedures are quite transactional and the person in overall charge of the care may be more useful as a contact.
      - Note: The “OnBehalfOf” reference is not essential and is removed – as this will also be covered by the Provenance tags

  - **Location** - Generally speaking the exact location where the procedure was performed seems unlikely to be vital for a regional care record. The organisation involved (from the Provenance tags) is often likely to be sufficient, and further details can also be provided by the Context linking to an Encounter.

  - **Reason Code and Reason Reference** - Could be useful to provide a code and/or a link to a Condition or Observation to explain the reason for the Procedure  

  - **Report** - Could be useful if relevant to provide additional background information

  - **Complication and Complication Detail** - can be populated with a code and/or Condition reference for any complications if relevant and known

  - **Used Code and Used Reference** - Relevant to stock control within an organisation, but less so for a regional record

 - **Note** - Only to be used with caution. Any notes may be shared widely across the region, including being viewed by the patient themselves

 - **Follow Up** - This is very useful to populate in a regional care record as, for example, it allows community teams to see that follow up care is needed. FHIR provides an "example" list which does not cover a great range of scenarios, and we are not aware of any better alternative list. Therefore categorised only as a "preferred" list for now - please get in touch if you intend to use and have further insights.


#### **Discouraged or Removed fields**
 
 - **Based On** – Removed.

 - **Part Of** – Removed.

 - **asserter**  - Removed. Not relevant to the shared care record.

 - **recorder** - Removed. Not relevant to the shared care record.