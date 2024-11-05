Status: DRAFT: For Review

### **Introduction**
This profile sets out the expectations for the interweave appointment resource. We use the [UKCore-Appointment](https://simplifier.net/HL7FHIRUKCoreR4/UKCore-Appointment) structure definition as a base to this profile.

This Resource will give the consumer the ability to see information of a booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time.

Note that it is necessary to consider the different purposes for which appointment data may be shared in a regional care record – as this has a bearing on how the fields are populated:

- **Historical** – this overlaps with the "Encounter" to a large extent, but may still be useful to build the picture of where someone has been, who they have seen and why. However the precise details of time and location are less likely to be important.

- **Future** – this a key use, to see what is upcoming. For example to build a picture of ongoing care, as well as to see what other practitioners are involved, and also to coordinate care – for example to arrange other interventions at the same time / place.

- **Patient** – there is a further use-case where appointments are viewed by the patient themselves – for example in an “app” which reminds them where and when to go. In this case the precise time and location are clearly vital.

- **Scheduling** – appointment data may potentially be used for scheduling – for example to match required appointments with available time slots and practitioners with appropriate skills. It is assumed however that this will be a feature of local systems and NOT a primary use-case at present for regional sharing. 

#### **Mandatory fields**
The following mandatory fields are defined:

1. **Status** - this is already mandatory in FHIR. Note that for future appointments it will be important to keep this status up-to-date.

2. **Service Type** - The specific service that is to be performed during this appointment. It is based on SNOMED refset 1127531000000102: Services Simple Reference Set and also covers social care.

3. **Participant: Subject** - rather unusually, the FHIR Appointment does not actually have a "subject" field, but instead a multi-purpose "participant" field. It is therefore mandatory to have exactly one "participant" of type "subject" to identify the Patient involved.

#### **Must Support fields**
In addition the following fields are "Must Support" – i.e., they must be populated if relevant and known. 

1. **Identifier** - A Local Id should be provided, such that could be quoted if manually getting in touch to find out more

2. **Start** - The date/time that an appointment is to take place. (Note that FHIR requires this field to be populated for appointments that are not at status “proposed” or “cancelled”)

3. **Appointment Type** - A simple list of codes eg "routine", "emergency" etc. We add a value for "urgent" to cover scheduled but urgent appointments.

4. **Description** - Any other title or text to further describe the appointment

5. **Participant: Primary Performer** - a reference to the main practitioner involved, once they have been allocated.

6. **Participant: Location** - again, rather unusually, the location is considered as another "participant" in the FHIR Appointment. A reference to the location is therefore required, once this has been allocated. 
    - Note that a location that is as granular as possible should be provided, although what this means may vary by Data Provider. Some may be able to allocate locations down to the "room" level - with this obviously being essential if the aim is to guide the patient directly to the right place. Others may allocate only at a "ward" or even "site" level - with the patient having to ask for further directions on arrival.


7. **Reason**: A long list of SNOMED codes to describe different reasons which have led to the Appointment. 

   We pre-adopt the value set used in R4. This builds on the existing STU3 list covering SNOMED codes for "Clinical Finding" and "Procedure", and adds codes for "Context-dependent categories" (Social Care) and "Events" (A&E) 

8. **Delivery Channel (Extension)** - simple and useful field to indicate whether in-person, telephone, or video

9. **Cancellation Reason** - obviously only relevant and useful if the appointment is cancelled.

#### **Optional fields**
Other fields are optional and may be populated if known – on the understanding that not all data consumers will necessarily make use of them.

#### **Discouraged or Removed fields**

- **Booking Organisation (Care Connect Extension)** - Proposed that this can instead be covered by other fields. For the organisation making the booking then see "basedOn". For the organisation taking the booking then see provenance tags in the "meta" section.

- **Supporting Information** - A pointer to potentially any other FHIR Resource. Should not be used as potentially difficult for a Data Consumer to know how to handle.

- **Comment** - To be used only with great care. It must be assumed that this comment will be widely viewed across the region, including by the patient themselves. For any patient specific information uses see "Patient Instruction" element.

- **Priority and Requested Period** - more relevant for local use in a scheduling system, rather than a regional shared record.