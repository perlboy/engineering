
.. _sprint-#2:

Sprint #2
=================================================

Goals
----------------

    1) Instant Product API
    2) Codegen Round #1

Deliverables
-------------------

    1) Authless Java Client with CLI
    2) Authless Java Server with Payload
    3) (Continuing in Sprint #3) cds-codegen Baseline
    4) (Continuing in Sprint #3) Initial Payload Conformance tool



Sprint Issue Breakdown
--------------------------------

+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| Issue ID#                                                                                    | Task Name                                                       | Creator                                    | Status | Assigned to                                   |
+==============================================================================================+=================================================================+============================================+========+===============================================+
| `#cds-codegen/34 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/34>`_ | Initial synchronise with CDS Types from Models and CLI refactor | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/16 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/16>`_ | Samples: Java Sandbox: Do initial ODBC wiring to Server Stubs   | `@csirostu <https://github.com/csirostu>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/15 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/15>`_ | Samples: Java Client: Write CLI wrappers for Product API        | `@csirostu <https://github.com/csirostu>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/14 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/14>`_ | Samples: Java Server: Produce baseline server stubs             | `@csirostu <https://github.com/csirostu>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/13 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/13>`_ | Samples: Java Client: Baseline Client Library                   | `@csirostu <https://github.com/csirostu>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/12 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/12>`_ | CDS Codegen: Write Model Handler                                | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/11 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/11>`_ | Pipeline: Swagger-codegen Client                                | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/8 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/8>`_   | CDS Codegen: Write Endpoint Handler                             | `@csirostu <https://github.com/csirostu>`_ | moved  | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/7 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/7>`_   | CDS Codegen: Create Handler Framework                           | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/5 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/5>`_   | Pipeline: Swagger-codegen Server                                | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/20 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/20>`_   | Introduce Java Type for format                                  | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/19 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/19>`_   | Add missing custom data types                                   | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/18 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/18>`_   | Updated Models with CDS Types and Product Reference Updates     | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/17 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/17>`_   | CDS Strong Typing Discussion                                    | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/4 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/4>`_     | Ratify Product API in Model                                     | `@csirostu <https://github.com/csirostu>`_ | moved  | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/27 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/27>`_ | Advisory Committee Meeting                                      | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/26 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/26>`_ | Feedback Request #2: Shared Definition Approach                 | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/25 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/25>`_ | Feedback Request #1: Engineering Artefacts                      | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/19 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/19>`_ | Sprint Planning #3                                              | `@csirostu <https://github.com/csirostu>`_ | moved  | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/16 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/16>`_ | Feedback Processing #1                                          | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/15 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/15>`_ | Write model parser for slate doc                                | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/14 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/14>`_ | Sprint Planning #2                                              | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+


Achievements
----------------

- Engineering: `Sample Client with CLI (cds-client-java) <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/support/samples/cds-client-java>`_ produced with Product APIs
- Engineering: `Sample Stubs (cds-stubs-java) <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/support/samples/cds-stubs-java-spring>`_ produced with Product APIs
- Engineering: `Sample Holder (cds-holder-java-spring) <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/support/samples/cds-holder-java-spring>`_ produced with Product APIs
- Engineering: Initial `cds-codegen (cds-codegen-core) <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/cds-artefact-generator/modules/cds-codegen-core>`_ with Model Generation
- Engineering: Initial `cds-codegen artefact pull request <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/pull/35>`_
- Standards: Sample Product Reference Payloads sent to Engineering for Data Loading (Coming Soon)
- Standards: Customer APIs pending Pull Request with updates to integrate into cds-models
- Standards: Payee APIs intended for next sprint

Retrospective
-----------------

**What went well?**

- We managed to produce sample client, stubs and holder (yay!)
- Identifying it was more beneficial to switch tasks
- Representation from Standards in Engineering standups is helpful
- Internal review repository looks like it helping cross-stream comms

**What needs improvement?**

- Spent a lot of time debating a solution
- Shrinking the time to identify perhaps best outcome is to switch tasks
- We didn't have a very well defined sprint plan
- It was challenging to agree on a solution
- Getting a better understanding of task estimates

**Next steps?**

- Discuss further "who is our customer" so Fei & Stu are aligned
- Organise planning time on Wednesday to allow for future sprint development
- Continue codegen development
- Integrate templates into codegen


