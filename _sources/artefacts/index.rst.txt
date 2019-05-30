Artefact Overview
================================================

The Engineering Working Group is producing a number of artefacts to demonstrate the emerging :term:`CDR` ecosystem. The primary aim of these artefacts is to allow interested parties to create simulations of the target environment which closely represent the implementation of the :term:`Consumer Data Standards` and it's associated components.

.. raw:: html

   <object style="width:100%" data="../_static/engineering-artefacts.svg" type="image/svg+xml"></object>

The following is an explanation of the high level sections included in the above diagram.

**Data Holder**

Data Holders, as the name suggests, hold consumer data that is intended for sharing. This sharing occurs in accordance with the technical definitions contained within the :term:`Consumer Data Standards`.

Specifically within Engineering there are a number of artefacts being delivered including:

    - *Server Stubs* - A starter project based on Java & Spring Boot which delivers the defined APIs with no business logic included
    - *Sample Auth* - A test deployment of the target Authentication and Authorisation intended as part of the :term:`CDS`
    - *Model Holder* - A functional simulation of the delivery expected from the :term:`CDS` by  :term:`Data Holder`\'s

**Data Recipient**

As with Data Holders, Data Recipients as the name suggests, are potential receivers of :term:`Data Holder` data which they utilise to deliver tailored value propositions to consumers. :term:`Data Recipient`\'s consume this data in accordance with the technical definitions contained within the :term:`Consumer Data Standards`.

In order to assist with development of these value propositions Engineering is working on a number of tools to assist. In addition to :term:`Data Recipient` focused tools Engineering is also delivering a set of tools to assist :term:`Data Holder`\'s in validating their deliver of the :term:`CDS`, referred to as Conformance.

Within Engineering there are number of artefacts being delivered:

    - *CDS Client Library* (cds-client-java) - A Java based library to allow prospective recipients of :term:`CDS` data to rapidly integrate their product or services into the :term:`CDR` ecosystem
    - *Client CLI* (cds-client-java-cli) - A command line interface (:term:`CLI`) which wraps the client library into a console based command interpreter focused on the :term:`CDS` functionality
    - *Test Harness* - A set of automated tests to provide a validation reporting to a :term:`Data Holder` in line with the future regulatory expectations
    - *Validator CLI* - Intended to be integrated into the *Client CLI* soon, the Validator CLI is a command line interface specifically focused on providing on-demand validation of prospective JSON payloads so that :term:`Data Holder` personnelle can perform internal verification of proposed API responses
    
**Registry**

The Registry encapsulates the "command and control" infrastructure intended to be operated by the :term:`ACCC`. :term:`CDS Engineering` intends to develop a self contained simulation of this infrastructure to provide supporting capability to our other artefacts.

The Registry is intended to serve a number of outcomes including:

    - *CDR Identities* - Identifying who are the participants of the :term:`CDR`
    - *Certificate Authority* - A cryptographic method of endorsing :term:`CDR` participants
    - *Discoverability* - A method of communicating how to initiate communications between participants of the :term:`CDR`
    

**Supporting Artefacts**

In order to efficiently deliver the target artefacts :term:`CDS Engineering` has built a number of supporting artefacts that provide Engineering with a single source of truth and couple it with code generation capability. 

These are outlined as follows:

    - *CDS Models* - A Java based definition which, using Java Annotations, looks to programmatically define the :term:`Consumer Data Standards` in such a way that software can perform "reflections" to process for the specific outcome that is intended
    - *CDS Codegen* - A Java based, JSON configured and Velocity template powered code generation tool which utilises the *CDS Models* to automatically generate various code outputs. Currently these include *cds-client-java* and *cds-client-java-cli*.
    - *Engineering Swagger Specification* - An OpenAPI 2 (fka Swagger) specification created by *CDS Codegen* from *CDS Models* to describe the Engineering ratified version of the :term:`CDS`.

**Supporting Documentation**

The Supporting Documentation provides the architectural, policy and legislative inputs used to define the :term:`CDR` ecosystem. Engineering has spent a considerable amount of time in processing these into a unified view of the :term:`CDS` and produce software outputs from them. These include:

    - *API Standards* - Ostensibly referred to as "the Standards" this documentation provides a definition of the Endpoints available, the parameters these Endpoints accept, the Payloads that these Endpoints return along with security (scope) and error definitions.
    - *InfoSec Profile* - This documentation refers to the specific Security regime intended for implementation as part of the :term:`CDR`. It includes overall guidance on intended encryption methods for use, information on how consent flows will technically work as well as tieing together the various international standards around effective session setup and any :term:`CDS` specific modifications being utilised.
    - *ACCC Rules & Policies* - As the lead regulator the ACCC has been in long term consultation on the rules framework intended to be deployed in the delivery of the :term:`CDR` legislation.
    - *Legislation* - This is a direct reference to the :term:`CDR Bill` which is pending acceptance within parliament




