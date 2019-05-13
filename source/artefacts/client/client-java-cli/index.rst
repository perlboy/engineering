
.. _cds-client-java-cli:

CDS Client CLI (cds-client-java-cli)
================================================

.. seealso:: Development of this documentation is in progress, please refer to the :ref:`cds-client-java` documentation

+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The CDS Client :term:`CLI` is a wrapper around the :ref:`cds-client-java-cli` to      |
|                     | provide a terminal based Developer friendly interface into the :term:`CDR` ecosystem. |
|                     | It is intended to be an example of software derived from the                          |
|                     | :ref:`cds-client-java-cli`                                                            |
+---------------------+---------------------------------------------------------------------------------------+
| Repositories        | `GitHub`_                                                                             |
|                     |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Release Status      | Beta                                                                                  |
+---------------------+---------------------------------------------------------------------------------------+
| Generation Status   | Automatic from :ref:`cds-codegen`                                                     |
+---------------------+---------------------------------------------------------------------------------------+
| Verified Snapshot   | 0.0.2-SNAPSHOT                                                                        |
| Version             |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Technologies Used   | * Java                                                                                |
|                     | * Maven                                                                               |
|                     | * Spring Boot                                                                         |
|                     | * Spring Shell                                                                        |
+---------------------+---------------------------------------------------------------------------------------+
| Related Artefacts   |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+

.. _GitHub: https://github.com/ConsumerDataStandardsAustralia/cds-client-java-cli

Quick Start
----------------------------

.. include:: quickstart.rst
   :start-after: start-content
   
Commands
------------------------------

.. list-table::
    :widths: 10 20 45 25
    :header-rows: 1

    * - Group
      - Command
      - Arguments
      - Description
    * - N/A
      - server
      - * --url <target-cds-endpoint>
      - Define the server endpoint to be used by the CLI
    * - Products API
      - list-products
      - 
            * --brand *<String>*
            * --effective *<ParamEffective>*
            * --page *<Integer>*
            * --page-size *<Integer>*
            * --product-category *<ParamProductCategory>*
            * --updated-since *<String>*
      - Get Products
    * - Products API
      - get-product-detail
      - 
            * --productId *<String>*
      - Get Product Detail
   