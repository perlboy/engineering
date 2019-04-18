
.. _sprint-#2:

Sprint #2
=================================================

Goals
----------------

    1) Instant Product API
    2) Codegen Round #1

Deliverables
-------------------

    1) Authless cds-codegen Java Client with CLI
    2) Authless cds-codegen Java Server with Payload



Sprint Issue Breakdown
--------------------------------

+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| Issue ID#                                                                                    | Task Name                                                       | Creator                                    | Status | Assigned to                                   |
+==============================================================================================+=================================================================+============================================+========+===============================================+
| `#cds-codegen/34 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/34>`_ | Initial synchronise with CDS Types from Models and CLI refactor | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/16 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/16>`_ | Samples: Java Sandbox: Do initial ODBC wiring to Server Stubs   | `@csirostu <https://github.com/csirostu>`_ | open   | `@fyang1024 <https://github.com/fyang1024>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/15 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/15>`_ | Samples: Java Client: Write CLI wrappers for Product API        | `@csirostu <https://github.com/csirostu>`_ | open   | `@fyang1024 <https://github.com/fyang1024>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/14 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/14>`_ | Samples: Java Server: Produce baseline server stubs             | `@csirostu <https://github.com/csirostu>`_ | open   | `@fyang1024 <https://github.com/fyang1024>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/13 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/13>`_ | Samples: Java Client: Baseline Client Library                   | `@csirostu <https://github.com/csirostu>`_ | open   | `@fyang1024 <https://github.com/fyang1024>`_  |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/12 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/12>`_ | CDS Codegen: Write Model Handler                                | `@csirostu <https://github.com/csirostu>`_ | open   | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/11 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/11>`_ | Pipeline: Swagger-codegen Client                                | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/8 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/8>`_   | CDS Codegen: Write Endpoint Handler                             | `@csirostu <https://github.com/csirostu>`_ | open   | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/7 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/7>`_   | CDS Codegen: Create Handler Framework                           | `@csirostu <https://github.com/csirostu>`_ | open   | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-codegen/5 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/5>`_   | Pipeline: Swagger-codegen Server                                | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/20 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/20>`_   | Introduce Java Type for format                                  | `@csirostu <https://github.com/csirostu>`_ | closed |                                               |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/19 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/19>`_   | Add missing custom data types                                   | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/18 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/18>`_   | Updated Models with CDS Types and Product Reference Updates     | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/17 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/17>`_   | CDS Strong Typing Discussion                                    | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#cds-models/4 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/4>`_     | Ratify Product API in Model                                     | `@csirostu <https://github.com/csirostu>`_ | open   | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/27 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/27>`_ | Advisory Committee Meeting                                      | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/26 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/26>`_ | Feedback Request #2: Shared Definition Approach                 | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/25 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/25>`_ | Feedback Request #1: Engineering Artefacts                      | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/19 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/19>`_ | Sprint Planning #3                                              | `@csirostu <https://github.com/csirostu>`_ | open   | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/16 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/16>`_ | Feedback Processing #1                                          | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/15 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/15>`_ | Write model parser for slate doc                                | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+
| `#engineering/14 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/14>`_ | Sprint Planning #2                                              | `@csirostu <https://github.com/csirostu>`_ | closed | `@csirostu <https://github.com/csirostu>`_    |
+----------------------------------------------------------------------------------------------+-----------------------------------------------------------------+--------------------------------------------+--------+-----------------------------------------------+


Achievements
----------------

*Pending*

Retrospective
-----------------

*Pending*

    - What went well?
    - What needs improvement?
    - Next steps?


