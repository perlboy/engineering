Conformance Quick Start
---------------------------------

.. start-content

Requirements
^^^^^^^^^^^^^^^^^^^^^^^

If you wish to simply run Conformance you only require Docker.

If you wish to build CDS Conformance this requires:

    1. Java 1.8+
    2. Maven

Execution
^^^^^^^^^^^^^^^^^^^^^

To start the CDS Conformance execute the Docker command as below:

.. code-block:: bash

    docker run -p 8000:8000 consumerdatastandardsaustralia/cds-conformance:0.9.3-SNAPSHOT -b=http://localhost:8080/cds-au/v1 -s
    
This will complete a Conformance Suite test then execute a python SimpleServer install available at ``http://localhost:8000``.

Alternatively you can write out a HTML report output by ommitting the -s command line argument as follows

.. code-block:: bash

    docker run -v `pwd`/conformance-result:/opt/cds-conformance/target consumerdatastandardsaustralia/cds-conformance:0.9.3-SNAPSHOT -b=http://localhost:8080/cds-au/v1
    
This will output a HTML report at: ``conformance-result/site/serenity/index.html``    


Manual Build & Run
^^^^^^^^^^^^^^^^^^^^^^^

To manually build and run the Conformance suite, run:

.. code-block:: bash

   user@cds:~/git$ git clone https://github.com/ConsumerDataStandardsAustralia/cds-conformance
   user@cds:~/git$ cd cds-conformance
   user@cds:~/git/cds-conformance$ mvn clean verify -DapiBase=http://localhost:8080/cds-au/v1
   
This will output a Serenity test report in: **target/site/serenity/**

To compile and install without testing (for inclusion in cds-client-cli):

.. code-block:: bash

   user@cds:~/git$ git clone https://github.com/ConsumerDataStandardsAustralia/cds-conformance
   user@cds:~/git$ cd cds-conformance
   user@cds:~/git/cds-conformance$ mvn clean install -DskipTests=true


  
