Sprint #1 Completed
================================================

.. post:: Apr 05, 2019
   :tags: sprint, engineering
   :category: sprint-updates
   :author: csirostu
   :language: en

Well it has been a pretty full on fortnight as we did our first major sprint but we are happy to report that after quite a few long days we achieved our major target of defining the Standards in Java Models and generating a swagger specification that is mostly identical to the Standards swagger. We completed a retrospective and the final report is available in the :ref:`sprint-#1` documentation, we will look to finalise :ref:`sprint-#2` planning on Monday.

**CDS Models**

The `CDS Models library <https://github.com/ConsumerDataStandardsAustralia/cds-models>`_ has now been fully populated with a complete set of definitions matching the Standards specification.  This includes:

* All Endpoint's defined in separated submodule paths
* All input parameters, all Response parameters
* Initial Authorisation response definitions
* Strong typing of data formats to assist in providing validation

**CDS Codegen**

After an epic effort (thanks Fei!) the first major release of the `CDS Codegen (Core) <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/master/modules/cds-codegen-core>`_ package was made today. This effectively processes the CDS Models and, using the official swagger-core library, produces a complete and syntactically precise swagger specification. We are in the process of feeding this back to the Standards work stream so that incremental changes to the Standards can be incorporated in a way that results in the Engineering artefacts aligning with the Standards documentation.

In :ref:`sprint-#2` we will build on this work to introduce our own CDS specific templates. With this capability we can now rapidly iterate on specification updates and have multiple components dynamically created in an efficient way (ie. Java Client, Server Stubs, CLI tools and eventually the Sandbox itself).

Finally, work is still in progress but over the weekend you will start to see some of these individual artefacts being made available as part of our build pipeline. These are initially being created via the swagger-codegen library (using the aforementioned specification generator output). I will send a quick update once these are published for initial testing.

**CDS Codegen Maven Plugin**

Related to this generation, we have also built an initial `CDS Codegen Maven Plugin <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/master/modules/cds-codegen-maven-plugin>`_. While we are going to use this within our own pipelines, this approach allows anyone to utilise a standard Maven definition to perform code generation of their own requirements with access to the standardised CDS Models library.

In essence this is the first step in integrating updates to the Standards into your business specific code bases. Over time we will start publishing "Getting Started" documentation so that developers can rapidly deploy CDS connectivity without needing to each do their own implementation. This is particularly relevant for Data Recipients who, without these tools, would be in a situation where each of them must create their own implementation, thus avoiding a huge duplication of effort among industry participants.

**Maven Repositories & CI**

After some deliberation Engineering made the decision to switch to `Travis-CI <https://travis-ci.com/ConsumerDataStandardsAustralia>`_ exclusively for builds. This includes using it for automatic publishing of all of our assets including the Engineering documentation :ref:`sprint-#1` and outputs from the various code generation executions.

Directly related to these executions, we have started publishing our libraries on the `CDS Sonatype Maven repository <https://oss.sonatype.org/#nexus-search;quick~consumerdatastandards>`_ so that they can start being included within initial testing code bases among participants.

**Engineering Workshop Feedback**

You would have received notification of the first two Feedback items published. We would really appreciate your feedback on these items and will look to close these by April 12.

In addition, we have published initial issues for comment on the Engineering GitHub:

* `Feedback Request #1: Engineering Artefacts <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/25>`_
* `Feedback Request #2: Shared Definition Approach <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/26>`_

**Upgradeability Roadmap**

There have been a few comments regarding versioning releases and how this works in an environment where both Holder and Recipient are at varied stages of adopting various versions of the Standards. As you can probably imagine, Engineering must also implement a solution in order to achieve our deliverables and this is where the task named `Upgradeability Roadmap <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/17>`_ came from.

We are still in discussions with the Standards work stream and hope to reach alignment soon. Versioning, Release Management, Backward Compatibility and Upgradeability are all related, interconnected and challenging topics to resolve when considered in the context of a national standard like what is being embarked on as part of the Consumer Data Right. I will provide further updates on this once internal consensus is reached regarding the path forward.

**Sprint #2 Summary**
Live Sprint Status: :ref:`sprint-#2`

In :ref:`sprint-#2` our focus now evolves to automatically generating various components with a specific focus on the Product API endpoints. While we are still working through the specific work tasks we have identified the following key deliverables:

1. Authless cds-codegen Java Client with CLI
2. Authless cds-codegen Java Server with Payload
3. Initial Product API Payload Structural Conformance

In essence we are focused on delivering a functional demonstration of the Product APIs from both a Data Holder and Data Recipient perspective. In addition we will be bootstrapping some initial structural conformance testing tools to allow Data Holders to start verifying their payloads against the Standards.

Our intention will be to produce an "alpha pre-release" of the Desktop Sandbox with a specific focus on showing the Product API's at work for both Holder and Recipient alike. Since Product Information was always intended to be published first we feel the best idea is to get a functional demonstration of these out as quickly as possible.

**On Our Way**

The rubber has now hit the road and our internal momentum is picking up. We've managed to validate our models approach for the Standards and in doing so have produced some tangible results regarding software components that can be used by ourselves and the community at large. As always we encourage feedback from the community on how we can help all participants to adopt the Consumer Data Standards.

