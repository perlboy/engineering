
.. _sprint-#1:

Sprint #1
=================================================

Goals
----------------

    1) Baseline and Quick Win

Deliverables
-------------------

    1) General: Model Recursion Setup
    2) Product API: “Quick Win” Client and Stubs
    3) Product API: Swagger -> Model Instantiation



Sprint Issue Breakdown
--------------------------------

+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| Issue ID#                                                                                    | Task Name                                                            | Creator                                      | Status | Assigned to                                                                              |
+==============================================================================================+======================================================================+==============================================+========+==========================================================================================+
| `#cds-codegen/31 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/31>`_ | Deterministic ordering in swagger json output                        | `@fyang1024 <https://github.com/fyang1024>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/30 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/30>`_ | Model swagger conversion                                             | `@fyang1024 <https://github.com/fyang1024>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/29 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/29>`_ | Filter by Section                                                    | `@fyang1024 <https://github.com/fyang1024>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/28 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/28>`_ | Generate Parameters in swagger.json                                  | `@fyang1024 <https://github.com/fyang1024>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/26 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/26>`_ | Introduce sonatype snapshots so that cds-model snapshots can be used | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/25 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/25>`_ | Restructure cds-codegen to use modules                               | `@csirostu <https://github.com/csirostu>`_   | closed |                                                                                          |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/6 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/6>`_   | Support swagger extensions in codegen                                | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/5 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/5>`_   | Pipeline: Swagger-codegen Server                                     | `@csirostu <https://github.com/csirostu>`_   | moved  | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/4 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/4>`_   | Produce swagger.json model definitions                               | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/3 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/3>`_   | Recurse Model Definition                                             | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/2 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/2>`_   | Introspect Model Dependencies                                        | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-codegen/1 <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/issues/1>`_   | Introspect Model Definition                                          | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/16 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/16>`_   | Bluetack CDS Models v1                                               | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/14 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/14>`_   | Mk 3 Travis Publish                                                  | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/13 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/13>`_   | Be explicit about master branch trigger, remove release hook for now | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/12 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/12>`_   | Add ResponseErrorList data definition and 422 response code          | `@fyang1024 <https://github.com/fyang1024>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/11 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/11>`_   | Commit travis snapshot publishing to sonatype                        | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/10 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/10>`_   | Setup snapshot publishing to sonatype                                | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/8 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/8>`_     | Support parameter in models                                          | `@fyang1024 <https://github.com/fyang1024>`_ | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/5 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/5>`_     | Support swagger extensions in models                                 | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_                                             |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#cds-models/3 <https://github.com/ConsumerDataStandardsAustralia/cds-models/issues/3>`_     | Blutack Baseline Model                                               | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/18 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/18>`_ | Fix doc publishing                                                   | `@csirostu <https://github.com/csirostu>`_   | closed | `@csirostu <https://github.com/csirostu>`_                                               |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/17 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/17>`_ | Write upgradeability roadmap                                         | `@csirostu <https://github.com/csirostu>`_   | moved  |                                                                                          |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/15 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/15>`_ | Write model parser for slate doc                                     | `@csirostu <https://github.com/csirostu>`_   | moved  |                                                                                          |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/14 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/14>`_ | Sprint Planning #2                                                   | `@csirostu <https://github.com/csirostu>`_   | closed |                                                                                          |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/13 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/13>`_ | All Day Team Meeting                                                 | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_ `@csirostu <https://github.com/csirostu>`_  |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/11 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/11>`_ | Example Name                                                         | `@csirostu <https://github.com/csirostu>`_   | closed |                                                                                          |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+
| `#engineering/1 <https://github.com/ConsumerDataStandardsAustralia/engineering/issues/1>`_   | Feedback: Round 1 Engineering Feedback Items                         | `@csirostu <https://github.com/csirostu>`_   | closed | `@fyang1024 <https://github.com/fyang1024>`_ `@csirostu <https://github.com/csirostu>`_  |
+----------------------------------------------------------------------------------------------+----------------------------------------------------------------------+----------------------------------------------+--------+------------------------------------------------------------------------------------------+


Achievements
----------------

- Converted handcrafted cds_full into java models using piecemeal swagger-codegen  (Stu: swagger-codegen is a nightmare) (`See CDS Models <https://github.com/ConsumerDataStandardsAustralia/cds-models>`_)
- cds-codegen from cds-models to produce a swagger.json (`See CDS Codegen Core <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/master/modules/cds-codegen-core>`_)
- Initial maven plugin for swagger-codegen pipelining (`See CDS Codegen Maven Plugin <https://github.com/ConsumerDataStandardsAustralia/cds-codegen/tree/master/modules/cds-codegen-maven-plugin>`_)
- All day team meeting (`Planning meeting Engineering update <../_static/20190325_Team_Planning_Update.pdf>`_)
- We are now publishing to sonatype repository (`CDS Maven artifacts <https://oss.sonatype.org/#nexus-search;quick~consumerdatastandards>`_)
- Feedback items posted for public review (`Open Feedback Requests <https://github.com/ConsumerDataStandardsAustralia/engineering/issues?q=is%3Aopen+is%3Aissue+label%3Afeedback>`_)
- Switched to travis-ci for all builds and publishes (`Consumer Data Standards Australia Travis-CI <https://travis-ci.com/ConsumerDataStandardsAustralia>`_)

Retrospective
-----------------

**What went well?**

- We worked really hard, did some overtime but achieved the sprint goal, we now have a clean swagger.json machine generated using swagger-core
- Kept rework to a minimum
- Team meeting was good checkpoint for everyone

**What needs improvement?**

- Interface between Standards and Engineering needs to be improved
- Didn't quite get onto swagger codegen outputs, Stu will try and finish this weekend so Sprint #2 is clear
- Multiple backlog items not identified
- Upgradeability roadmap still in progress

**Next steps?**

- Technical Delivery Manager to coordinate process for integrating Standards changes with Engineering
- Establish joint standup for Engineering & Standards
- Get better at engineering task identification
- Technical Delivery Manager looking to establishing integration scrum to help Work Streams with shared tasks

