# Interweave FHIR Implementation Guide

## Background and Purpose

This Implementation Guide defines Interweave standards for the population of FHIR Resources.

This Implementation Guide is based on practical experience with early implementers - and considers both the data which providers are typically able to offer, and also the data which consumers find they need to provide a safe and meaningful display. It aims to address real-world practical problems which have been discovered in implementation due to the wide-ranging optionality of FHIR.

The aim is not only to define a useful constrained standard, but also to capture the thought process and rationale behind decisions made. Therefore:

 - The **"guidance"** section describes general principles, which help to explain the rationale behind  the detailed decisions which follow
 - The **"artefacts"** section describes a constrained profile for each type of FHIR Resource. This includes notes to further explain the rationale at a detailed field level

**Comments and consultation are welcomed. It is vital that these data standards are widely accepted and are seen as a practical and implementable approach. We are actively seeking and welcome input to ensure this is the case.**


## Status and Approvals
The profiles in this implementation guide are categorised by status as follows:
 1. **Draft: Work In Progress** - this is initial work, shared for consultation but unstable and still subject to discussion and change at any time.
 2. **Draft: For Review** - the draft is more stable and ready for wider review. However may still be subject to change at any time, for example based on review comments
 3. **Active: Approved (STU)** - the profile has been approved for use by the regional Technical Design Authority. It may be considered as a Standard for Trial Use. Any changes will be notified and Change Controlled.
 4. **Active: Implemented (STU)** - whilst still a Standard for Trial Use, the profile has been proven in at least one successful implementation
 5. **Active: Normative** - the profile is widely established and proven, and may be considered Normative
 6. **Deprecated** - the profile has been superceeded and should no longer be used for new implementations


## How to read this guide
The top menu bar provides access to the following main sections:
 - **Artefacts (Interweave)** - please select a FHIR Resource of interest to review the detailed Interweave data standards

Within each artefact then a suggested approach would be:
 - **Read the introductory text.** This provides useful background explanation and rationale, plus offers a simple descriptive summary of which fields are required and why

<img src=".\HowToIntroText.png" alt="Intro Text" style="clear:both; float:none">


  - **Review the "Differential Table".** This highlights the changes that have been made to further tighten the CareConnect profile. This includes the red highlighter markings to indicate all "Must Support" fields

<img src=".\HowToDifferential.png" alt="Intro Text" style="clear:both; float:none">


  - **Review the "Snapshot Table".** This gives a more complete view of the entire resource, including any optional fields

<img src=".\HowToSnapshot.png" alt="Intro Text" style="clear:both; float:none">

   - Back at the top of the page, **look at the "Examples" tab.** This contains example instances - to illustrate what the data might actually look like in practice.

   <img src=".\HowToExamples.png" alt="Intro Text" style="clear:both; float:none">
