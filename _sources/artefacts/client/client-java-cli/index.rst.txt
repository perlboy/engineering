
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
|                     | `Sonatype`_                                                                           |
|                     | `Docker`_                                                                             |
+---------------------+---------------------------------------------------------------------------------------+
| Release Status      | Pre Release compliant to Standards Product API Specification version 0.9.3            |
+---------------------+---------------------------------------------------------------------------------------+
| Generation Status   | Automatic from :ref:`cds-codegen`                                                     |
+---------------------+---------------------------------------------------------------------------------------+
| Verified Snapshot   | 0.9.3-SNAPSHOT                                                                        |
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
.. _Sonatype: https://oss.sonatype.org/#nexus-search;quick~cds-client-java-cli
.. _Docker: https://hub.docker.com/r/consumerdatastandardsaustralia/cds-client-java-cli

Quick Start
----------------------------

.. include:: quickstart.rst
   :start-after: start-content
   
Commands
------------------------------

The CLI contains a growing number of commands that can be executed to retrieve information from Data Holders and the proposed Register design.

.. list-table::
    :widths: 10 20 45 25
    :header-rows: 1

    * - Group
      - Command
      - Arguments
      - Description
    * - Common
      - server
      - 
        
        * --url <target-cds-endpoint>
      - Define the server endpoint to be used by the CLI
    * - Common
      - set-user-agent
      - 
        
        * --user-agent <user agent string>
      - Define the user-agent used by the CLI
    * - Common
      - get-user-agent
      - N/A
      - Retrieve current user-agent used by CLI
    * - Common
      - client-debug-enable
      - 

        * --client-enable <true/false>
      - Enable Client API transport debug information
    * - Common
      - get-client-debug
      - N/A
      - Retrieve Client API transport debug status
    * - Common
      - set-log-level
      - 

        * --target-level <TRACE/DEBUG/WARN/INFO>
      - Define the minimum log level to print
    * - Common
      - get-log-level
      - N/A
      - Get current log level
    * - Products API
      - list-products
      - 
            * --brand *<String>*
            * --effective *<ParamEffective>*
            * --page *<Integer>*
            * --page-size *<Integer>*
            * --product-category *<ParamProductCategory>*
            * --updated-since *<String>*
            * --
      - Get Products
    * - Products API
      - get-product-detail
      - 
            * --productId *<String>*
      - Get Product Detail
    * - Conformance
      - auto-validate
      - 
            * --enable-validation <true/false>
            
      - Perform Conformance checking on all responses
    * - Conformance
      - conformance-status
      - N/A
      - Retrieve automated conformance checking status
    * - Conformance
      - validate-path
      - 
            * -f /path/to/payload
            
      - Perform static payload verification
    * - Discovery
      - get-holder
      -
            * --provider-id <provider-id>
      - Retrieve Holder information from Register specifying provider-id
    * - Discovery
      - get-register-endpoint
      - N/A
      - Retrieve current Register Endpoint address
    * - Discovery
      - list-holders
      - N/A
      - List the current holders within the Register
    * - Discovery
      - set-register-endpoint
      -
            * --discovery-endpoint <http://path/to/register>
      - Set Register endpoint Discovery location
    * - Discovery
      - setup-holder
      -
            * --provider-id <provider-id>
      - Retrieve and Setup Holder details based on provider-id


      