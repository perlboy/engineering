Desktop Sandbox (desktop-sandbox)
================================================

.. note:: Development of this documentation is in progress.

+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The Desktop Sandbox is intended to be a self contained but complete representation    |
|                     | of the emerging :term:`Consumer Data Standards` ecosystem. It achieves this goal      |
|                     | through the programmatic coordination of multiple subservices combining the various   |
|                     | other :term:`CDS Engineering` artefacts.                                              |
+---------------------+---------------------------------------------------------------------------------------+
| Release Status      | Not Started                                                                           |
+---------------------+---------------------------------------------------------------------------------------+
| Generation Status   | Handed coded by :term:`CDS Engineering`                                               |
+---------------------+---------------------------------------------------------------------------------------+
| Current Snapshot    | N/A                                                                                   |
| Version             |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Related Artefacts   |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+


High Level Architecture Diagram
-------------------------------------

.. uml::

   skinparam linetype ortho

   package "Desktop Sandbox" {
     interface "Sandbox Generation"
     [Sample Holder (cds-holder-java)]
     database "Ephemeral Database"
     [OpenID Auth Server]
     [Registry Simulation]
   }
   
   package "Developer Tools" {
     [CLI (cds-java-client-cli)]
     [Sandbox Data Loader]
     [Conformance Tool]
   }

   package "Client Artefacts" {
     [Client Library (cds-java-client)]
   }

   [Conformance Tool] --> [Sample Holder (cds-holder-java)]: << verify >>
   [Sample Holder (cds-holder-java)] --> [Ephemeral Database]: << stores data >>
   [Sample Holder (cds-holder-java)] --> [OpenID Auth Server]: << authorises via >>
   [Sandbox Data Loader] --> [Sample Holder (cds-holder-java)]: << modifies >>
   [CLI (cds-java-client-cli)]   --> [Sample Holder (cds-holder-java)]: << accesses >>
   [CLI (cds-java-client-cli)]   --> [OpenID Auth Server]: << authenticates >>
   [CLI (cds-java-client-cli)]   --> [Client Library (cds-java-client)]: << utilises >>
   [CLI (cds-java-client-cli)] --> [Registry Simulation]: << accesses >>
   [Sample Holder (cds-holder-java)] --> [Registry Simulation]: << accesses >>
   

