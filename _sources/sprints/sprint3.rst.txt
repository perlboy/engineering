
.. _sprint-#3:

Sprint #3
=================================================

Goals
----------------

    1) Codegen Round #2

Deliverables
-------------------

    1) Codegen output of Stubs and Client
    2) Codegen pipelining to cds-codegen-outputs
    3) Initial Product API Payload Structural Conformance



Sprint Issue Breakdown
--------------------------------

+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| Issue ID#                                                                                    | Task Name                                                                                     | Creator                                      | Status | Assigned to                                                                              |
+==============================================================================================+===============================================================================================+==============================================+========+==========================================================================================+
| `#cds-codegen/40 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/40>`_ | Initial Artefact Generator + Samples: Round 3                                                 | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/39 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/39>`_ | Initial Artefact Generator + Samples: Round 2 - Add cds-codegen-maven-plugin deploy resources | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/38 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/38>`_ | Conformance tools research                                                                    | `@fyang1024 <https://github.com/fyang1024>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/37 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/37>`_ | Containerise Product API Samples and Publish                                                  | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/36 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/36>`_ | Showcase video for Product API client & server                                                | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/35 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/35>`_ | Initial Artefact Generator + Samples: Round 1                                                 | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/20 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/20>`_ | Conformance: Product API to Model Validator Function                                          | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/19 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/19>`_ | Conformance: Write Model Compare Validator #2                                                 | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/18 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/18>`_ | Conformance: CLI wrapper for payload attribute structure validator                            | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/17 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/17>`_ | Conformance: Write Model Compare Validator #1                                                 | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/10 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/10>`_ | Pipeline: invoke unit tests upon code commit                                                  | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/9 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/9>`_   | Write unit tests for swagger.json code generation                                             | `@csirostu <https://github.com/csirostu>`_   | moved  |                                                                                          |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/8 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/8>`_   | CDS Codegen: Write Endpoint Handler                                                           | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/23 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/23>`_   | Force a release to 0.0.4 due to sonatype caching                                              | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/22 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/22>`_   | Introduce data operation and attribute and some test mods                                     | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/21 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/21>`_   | Add isId marker for identity column specification                                             | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/6 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/6>`_     | Support Conditionality in Model                                                               | `@csirostu <https://github.com/csirostu>`_   | moved  |                                                                                          |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/4 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/4>`_     | Ratify Product API in Model                                                                   | `@csirostu <https://github.com/csirostu>`_   | moved  | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/33 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/33>`_ | Standards Decision Proposal Reviews Round 1                                                   | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/29 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/29>`_ | All Day ACCC Co-Design Meeting                                                                | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/28 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/28>`_ | Introduce blog posting, reshuffling assets                                                    | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/22 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/22>`_ | Sprint Planning #4                                                                            | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_ `@csirostu <https://github.com/csirostu>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/19 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/19>`_ | Sprint Planning #3                                                                            | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+


Achievements
----------------

- Automated Client Library & CLI generation: `Consumer Data Standards Sonatype <https://oss.sonatype.org/#nexus-search;quick~consumerdatastandards>`_
- Sample Data Holder for Product API: `Sample Data Holder Available <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/master/support/samples/cds-holder-java-spring>`_
- Nice packaging for artefacts with Docker: `CDS DockerHub Account now has runnable cli/holder and codegen <https://hub.docker.com/r/consumerdatastandardsaustralia>`_
- Live API Alpha Conformance Test Tool: Available in `Codegen Samples <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/support/samples/cds-conformance>`_ pending packaging and migration 
- File based (JSON) validation CLI Alpha Conformance Test Tool: Available in `Codegen Samples <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/support/samples/cds-conformance>`_ pending packaging and migration 
- ACCC Registry conversations

Retrospective
-----------------

**What went well?**

- We achieved the goals!
- We were much more efficient this sprint, Fei and Stu continuing to improve on working together
- Major initial release of *hopefully* artefacts, want to get community feedback
- Maintain momentum through Easter
- We did a Sprint #4 plan prior to retrospective
- Under pressure Stu and Fei still kept their cool when interacting on code development

**What needs improvement?**

- We should slow down a bit to speed up in the future
- Need to conduct code review, good that we achieved the goals now need to tighten things up
- Stu's mental dictionary is very large and he needs to get better at using easier language

**Next steps?**

- Take stock and do code review of what we've go so far
- Get up to speed with InfoSec Profile so we can have shared understanding
- Unify sub-stream work items to allow Technical Delivery Manager to review


