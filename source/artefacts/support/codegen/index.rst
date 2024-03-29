.. _cds-codegen:

CDS Code Generator (cds-codegen)
================================================

.. note:: Development of this documentation is in progress.


+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The CDS Code Generator Suite is a multiple format code generation application centered|
|                     | around the :term:`Consumer Data Standards`. It uses the programmatic model definition |
|                     | provided by :ref:`cds-models` to output various versions of the :term:`CDS` artefacts.|
|                     | Artefacts are intended to be regenerated using :ref:`cds-codegen` on a regular basis  |
|                     | resulting in a unified perspective of the :term:`CDS Engineering` artefacts.          |
|                     | A significant portion of this documentation is generated using :ref:`cds-codegen`.    |
+---------------------+---------------------------------------------------------------------------------------+
| Repositories        | `GitHub`_                                                                             |
|                     | `Docker`_                                                                             |
+---------------------+---------------------------------------------------------------------------------------+
| Release Status      | Alpha                                                                                 |
+---------------------+---------------------------------------------------------------------------------------+
| Generation Status   | Managed & Maintained by :term:`CDS Engineering`                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Verified Snapshot   | 0.0.3-SNAPSHOT                                                                        |
| Snapshot            |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Related Artefacts   | Outputs the following artefacts:                                                      |
|                     |     * cds-client-java                                                                 |
|                     |     * cds-client-java-cli                                                             |
|                     |     * cds-stubs-java-spring                                                           |
|                     |     * This Documentation                                                              |
|                     |                                                                                       |
|                     | Uses the following artefacts:                                                         |
|                     |     * cds-models                                                                      |
|                     |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+

.. _GitHub: https://github.com/ConsumerDataStandardsAustralia/cds-codegen
.. _Docker: https://hub.docker.com/r/consumerdatastandardsaustralia/cds-codegen-core

.. toctree::
   :hidden:
   :glob:
  
   Software Architecture <architecture>    

Quick Start
----------------------------

.. include:: quickstart.rst
   :start-after: start-content

