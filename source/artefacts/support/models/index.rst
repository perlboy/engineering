.. _cds-models:

CDS Models (cds-models)
================================================

+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The CDS Models library provides a programmatic definition of the                      |
|                     | :term:`Consumer Data Standards`. The CDS Models library uses a number of CDS specific |
|                     | Java Annotations as Descriptors of the various functionality within the :term:`CDS`.  |
+---------------------+---------------------------------------------------------------------------------------+
| Repositories        | `GitHub`_                                                                             |
|                     | `Sonatype`_                                                                           |
+---------------------+---------------------------------------------------------------------------------------+
| Release Status      | Alpha update in Progress                                                              |
+---------------------+---------------------------------------------------------------------------------------+
| Generation Status   | Managed & Maintained by :term:`CDS Engineering`                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Verified Standards  | 0.2.1 (Update in Progress post May 30 release)                                        |
| Version             |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Related Artefacts   | * :ref:`cds-codegen`                                                                  |
|                     | * :ref:`cds-client-java`                                                              |
|                     | * :ref:`cds-client-java-cli`                                                          |
+---------------------+---------------------------------------------------------------------------------------+

.. _GitHub: https://github.com/ConsumerDataStandardsAustralia/cds-models
.. _Sonatype: https://oss.sonatype.org/#nexus-search;quick~cds-models


Overview
---------------

The `cds-models` library is intended to provide a single source of truth for the :term:`CDS Engineering` artefacts to be built from.

The `cds-models` approach is to define a number of :term:`CDS Engineering` specific Java annotations and then describe the emerging Standards using them.

.. toctree::
   :maxdepth: 3
   :caption: Annotation Catalogue
   
   Endpoints <endpoints>
   Data Definitions & Attributes <definitions_attributes>
