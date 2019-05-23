Artefact Architecture
================================================

.. uml::

   skinparam linetype ortho
   
   package "Client Artefacts" {
     [Client Library (cds-java-client)]
     [CLI (cds-java-client-cli)]
     [Sandbox Data Loader]
   }
   
   package "Server Artefacts" {
     [Server Stubs]
     [Sample Holder (cds-holder-java)]
   }
   
   package "Runtime" {
     [Registry Simulation]
     [OpenID Auth Server]
     [Conformance Tool]
   }
   
   package "Data Standards" {
     [InfoSec Profile]
     [API Standard]
   }

   package "Support Artefacts" {
     [Shared Models]
     [Code Generation Engine]
     
   }
   
   [InfoSec Profile] -right-> [API Standard]: << informs >>
   [API Standard] -right-> [Shared Models]: << craft into >>
   [Code Generation Engine] -up-> [Shared Models]: << utilises >>
   [Code Generation Engine] -right-> [Server Stubs]: << generates >>
   [Code Generation Engine] -right-> [Client Library (cds-java-client)]: << generates >>
   [Code Generation Engine] -right-> [CLI (cds-java-client-cli)]: << generates >>
   [Server Stubs] --> [Sample Holder (cds-holder-java)]: << based on >>
   [Sample Holder (cds-holder-java)] --> [OpenID Auth Server]: << authorises via >>
   [Sandbox Data Loader] --> [Sample Holder (cds-holder-java)]: << modifies >>
   [Conformance Tool] -up-> [Sample Holder (cds-holder-java)]: << verify >>   
   [CLI (cds-java-client-cli)] -down-> [Sample Holder (cds-holder-java)]: << accesses >>
   [CLI (cds-java-client-cli)] -down-> [OpenID Auth Server]: << authenticates >>
   [CLI (cds-java-client-cli)] -left-> [Client Library (cds-java-client)]: << utilises >>
   [Sandbox Data Loader] -up-> [Client Library (cds-java-client)]: << utilises >>
   [CLI (cds-java-client-cli)] -down-> [Registry Simulation]: << accesses >>
