Desktop Sandbox Quick Start
---------------------------------

.. start-content

Requirements
^^^^^^^^^^^^^^^^^^^^^^^

The Desktop Sandbox is an amalgamation of Docker containers orchestrated using Docker Compose.

To get up and running with the Sandbox you require:
    1. Docker
    2. Docker Compose
    
Startup
^^^^^^^^^^^^^^^^^^^^^

The following command starts up the Desktop Sandbox environment:

.. code-block:: bash

    user@host:~/git$ git clone https://github.com/consumerdatastandardsaustralia/desktop-sandbox
    Cloning into 'desktop-sandbox'...
    remote: Enumerating objects: 73, done.
    remote: Counting objects: 100% (73/73), done.
    remote: Compressing objects: 100% (34/34), done.
    remote: Total 73 (delta 21), reused 62 (delta 15), pack-reused 0
    Unpacking objects: 100% (73/73), done.
    user@host:~/git$ cd desktop-sandbox
    user@host:~/git/desktop-sandbox$ docker-compose up
    Creating network "desktop-sandbox_cdsdevnet" with the default driver
    Creating volume "desktop-sandbox_consul-data" with default driver
    Creating desktop-sandbox_consul_1 ... done
    Creating desktop-sandbox_holder2_1   ... done
    Creating desktop-sandbox_discovery_1 ... done
    Creating desktop-sandbox_holder1_1   ... done
    Attaching to desktop-sandbox_consul_1, desktop-sandbox_discovery_1, desktop-sandbox_holder2_1, desktop-sandbox_holder1_1
    consul_1     | bootstrap = true: do not enable unless necessary
    consul_1     | ==> Starting Consul agent...
    consul_1     | ==> Consul agent running!
    consul_1     |            Version: 'v1.5.1'
    consul_1     |            Node ID: 'e6617bee-9196-21e6-686a-8652d36c3958'
    consul_1     |          Node name: '70308f18d0dc'
    consul_1     |         Datacenter: 'dc1' (Segment: '<all>')
    consul_1     |             Server: true (Bootstrap: true)
    <snip>
    holder1_1    | 2019-07-01 07:54:52.862  INFO 44 --- [0.0-8081-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
    holder1_1    | 2019-07-01 07:54:52.862  INFO 44 --- [0.0-8081-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
    holder1_1    | 2019-07-01 07:54:52.882  INFO 44 --- [0.0-8081-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 20 ms
    holder1_1    |     2019/07/01 07:54:53 [INFO] agent: Synced check "service:holder1"
    holder2_1    | 2019-07-01 07:54:55.319  INFO 44 --- [0.0-8082-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
    holder2_1    | 2019-07-01 07:54:55.319  INFO 44 --- [0.0-8082-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
    holder2_1    | 2019-07-01 07:54:55.338  INFO 44 --- [0.0-8082-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 18 ms
    holder2_1    |     2019/07/01 07:54:55 [INFO] agent: Synced check "service:holder2"

This will setup services as follows:

   * Data Holder 1 (Good Payloads): ``http://localhost:8081/cds-au/v1``
   * Data Holder 2 (Bad Payloads): ``http://localhost:8082/cds-au/v1``
   * Sandbox Register: ``http://localhost:9000/cds-register/v1``
   * Consul Config Service: ``http://localhost:8500/ui/dc1/services``


Sandbox CLI Access
^^^^^^^^^^^^^^^^^^^^^^^

Once the Sandbox is up and running you can initiate connectivity within the private Sandbox network by executing the CLI container:
``docker run --network desktop-sandbox_cdsdevnet -it consumerdatastandardsaustralia/cds-client-java-cli:0.9.3-SNAPSHOT --consul.enabled=true --consulmaster=10.252.252.2``

.. code-block:: bash

   user@host:~/$ docker run --network desktop-sandbox_cdsdevnet -it consumerdatastandardsaustralia/cds-client-java-cli:0.9.3-SNAPSHOT --consul.enabled=true --consulmaster=10.252.252.2
    ==> Starting Consul agent...
    <snip>
    
    #     ___     ___     ___
    #    / __|   |   \   / __|
    #   | (__    | |) |  \__ \
    #    \___|   |___/   |___/
    #  _|"""""|_|"""""|_|"""""|
    #  "`-0-0-'"`-0-0-'"`-0-0-'
    
    Starting CdsClientShell v0.9.3-SNAPSHOT on d0b751a96b76 with PID 44 (/opt/cds-client-java-cli/cli.jar started by root in /opt)
    No active profile set, falling back to default profiles: default
    Reflections took 302 ms to scan 2 urls, producing 6 keys and 187 values 
    Reflections took 107 ms to scan 2 urls, producing 6 keys and 187 values 
    Started CdsClientShell in 6.451 seconds (JVM running for 8.533)
    cds-shell:>

Sandbox Register Connection
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

So that the Sandbox CLI can discover the Holders alive in the Sandbox it is necessary to setup the ``register-endpoint`` within CLI as follows:

.. code-block:: bash

    cds-shell:>set-register-endpoint --discovery-endpoint http://discovery:9000/cds-register/v1
    Discovery Endpoint URL is set to: http://discovery:9000/cds-register/v1
    cds-shell:>list-holders --summary
    +-------------+-------------------------------+
    | Provider ID | Endpoint Address              |
    +-------------+-------------------------------+
    |         GH1 | http://holder1:8081/cds-au/v1 |
    +-------------+-------------------------------+
    |         BH1 | http://holder2:8082/cds-au/v1 |
    +-------------+-------------------------------+
    cds-shell:>

Custom Holder Launcher
^^^^^^^^^^^^^^^^^^^^^^^^

If you would like to launch your own Holder (with it's own payloads) into the Sandbox environment you can do so by launching another Docker container with the appropriate parameters.

``docker run -h holder3 -p 8083:8080 --network desktop-sandbox_cdsdevnet -v `pwd`/runtime/holder3:/opt/payloads -it consumerdatastandardsaustralia/cds-holder-java:0.9.3-SNAPSHOT --consul.enabled=true --consulmaster=10.252.252.2 --id=holder3 --registry.providerId=NH1``

.. code-block:: bash

   user@host:~$ docker run -h holder3 -p 8083:8080 --network desktop-sandbox_cdsdevnet -v `pwd`/runtime/holder3:/opt/payloads -it consumerdatastandardsaustralia/cds-holder-java:0.9.3-SNAPSHOT --consul.enabled=true --consulmaster=10.252.252.2 --id=holder3 --registry.providerId=NH1
    ==> Starting Consul agent...
    ==> Joining cluster...
        Join completed. Synced with 1 initial agents
     <snip>
    2019-07-01 08:04:08.508  INFO 44 --- [           main] d.s.w.p.DocumentationPluginsBootstrapper : Context refreshed
    2019-07-01 08:04:08.571  INFO 44 --- [           main] d.s.w.p.DocumentationPluginsBootstrapper : Found 1 custom documentation plugin(s)
    2019-07-01 08:04:08.643  INFO 44 --- [           main] s.d.s.w.s.ApiListingReferenceScanner     : Scanning for api listing references
    2019-07-01 08:04:09.199  INFO 44 --- [           main] a.o.c.holder.util.ContextEventListener   : Service setup in progress, performing boot time operations
    2019-07-01 08:04:09.202  INFO 44 --- [           main] a.o.c.holder.util.ContextEventListener   : Initiating data loader for Products
        2019/07/01 08:04:09 [INFO] agent: Synced service "holder3"
    2019-07-01 08:04:10.023  INFO 44 --- [           main] a.o.c.holder.util.HolderRegistrator      : Holder Service registered with Consul server with id of holder3 on port 8080 with type HOLDER and service uri of http://holder3:8080
    2019-07-01 08:04:10.153  INFO 44 --- [           main] a.o.c.holder.util.HolderRegistrator      : Holder Service Discovery payload registered as key value pair with Consul server
    2019-07-01 08:04:10.235  INFO 44 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
    2019-07-01 08:04:10.242  INFO 44 --- [           main] a.o.c.holder.HolderApplication           : Started HolderApplication in 17.08 seconds (JVM running for 18.471)

This Holder will now be available at ``http://localhost:8083``. It will also be registered with the Sandbox Register:

.. code-block:: bash

    cds-shell:>list-holders --summary
    +-------------+-------------------------------+
    | Provider ID | Endpoint Address              |
    +-------------+-------------------------------+
    |         GH1 | http://holder1:8081/cds-au/v1 |
    +-------------+-------------------------------+
    |         BH1 | http://holder2:8082/cds-au/v1 |
    +-------------+-------------------------------+
    |         NH1 | http://holder3:8080/cds-au/v1 |
    +-------------+-------------------------------+
    cds-shell:>get-holder NH1
    Register Holder payload retrieved
    class RegisterDataHolder {
        providerId: NH1
        accreditation: null
        participant: class RegisterParticipant {
            name: ACME Bank
            participantId: null
            participantType: HOLDER
            organisation: class class au.org.consumerdatastandards.holder.model.CommonOrganisationDetail {
            }
        }
        endpointDetail: [class RegisterDataHolderServiceEndpoint {
            acccDataStandardVersion: 0.9.3
            cdrBaseUri: http://holder3:8080/cds-au/v1
            cdrRevocationUri: null
            cdrCacheRefreshUrl: null
            cdrMetricsUrl: null
            publicUrl: null
            termsofServiceUrl: null
            logoUrl: null
            supportUrl: null
            policyUrl: null
        }]
        authDetail: []
    }
    cds-shell:>
    
