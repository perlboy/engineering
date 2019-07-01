.. _cds-holder-java-spring:

Model Holder (Java+Spring Boot) 
================================================

.. note:: Development of this documentation is in progress.

+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The Model Holder is intended to provide a conformant example of the emerging Consumer |
|                     | Data Standards. It is intended to be a :term:`Reference Implementation` of the        |
|                     | :term:`Consumer Data Standards` from a :term:`Data Holder` ("server") perspective     |
+---------------------+---------------------------------------------------------------------------------------+
| Repositories        | `GitHub`_                                                                             |
|                     |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Release Status      | Pre Release compliant to Standards Product API Specification version 0.9.3            |
+---------------------+---------------------------------------------------------------------------------------+
| Generation Status   | Handed coded by :term:`CDS Engineering`                                               |
+---------------------+---------------------------------------------------------------------------------------+
| Verified Snapshot   | 0.9.3-SNAPSHOT                                                                        |
| Version             |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Technologies Used   | * Java                                                                                |
|                     | * Maven                                                                               |
|                     | * Maven                                                                               |
|                     | * Spring Boot                                                                         |
|                     | * Spring Framework                                                                    |
|                     | * Java Hibernate                                                                      |
+---------------------+---------------------------------------------------------------------------------------+

.. _GitHub: https://github.com/ConsumerDataStandardsAustralia/cds-holder-java-spring

Quick Start
----------------------------

.. include:: quickstart.rst
   :start-after: start-content

Overview
----------------

The Model Holder is a web service compatible with Standards 0.9.3 Product APIs. 

It supports custom payload loading during boot time and can also register to the shared configuration clustered used by the :ref:`cds-desktop-sandbox`.

In addition, through Springfox integration it has a `Swagger UI interface (by default on port 8080) <http://localhost:8080/cds-au/v1>`_

