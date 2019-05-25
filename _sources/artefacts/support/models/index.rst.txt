.. _cds-models:

CDS Models (cds-models)
================================================

+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The CDS Models library provides a programmatic definition of the                      |
|                     | :term:`Consumer Data Standards`. The CDS Models library uses a number of CDS specific |
|                     | Java Annotations as Descriptors of the various functionality within the :term:`CDS`.  |
+---------------------+---------------------------------------------------------------------------------------+
| Release Status      | Utilised by all automatically generated product outputs                               |
+---------------------+---------------------------------------------------------------------------------------+
| Generation Status   | Managed & Maintained by :term:`CDS Engineering`                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Current Verified    | 0.0.2-SNAPSHOT                                                                        |
| Snapshot            |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Related Artefacts   | * :ref:`cds-codegen`                                                                  |
|                     | * :ref:`cds-client-java`                                                              |
|                     | * :ref:`cds-client-java-cli`                                                          |
+---------------------+---------------------------------------------------------------------------------------+

Overview
---------------

The `cds-models` library is intended to provide a single source of truth for the :term:`CDS Engineering` artefacts to be built from.

The `cds-models` approach is to define a number of :term:`CDS Engineering` specific Java annotations and then describe the emerging Standards using them.

.. toctree::
   :maxdepth: 3
   :caption: Annotation Catalogue
   
   Endpoints <endpoints>
   Data Definitions & Attributes <definitions_attributes>
