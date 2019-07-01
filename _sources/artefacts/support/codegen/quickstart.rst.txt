Code Generator
---------------------------------

.. start-content

Requirements
^^^^^^^^^^^^^^^^^^^^^^^

If you wish to simply run the CDS Code Generator you only require Docker.

If you wish to build CDS Codegen this requires:

    1. Java 1.8+
    2. Maven

Execution with Docker
^^^^^^^^^^^^^^^^^^^^^^^^^

To start the CDS Codegen execute the Docker command as below:

.. code-block:: bash

    user@cds:~$ docker run -it consumerdatastandardsaustralia/cds-codegen-core:0.9.3-SNAPSHOT -h
    Usage: <main class> [options]
      Options:
        --generator, -g
          Class name of cds-codegen generator
          Default: au.org.consumerdatastandards.codegen.generator.openapi.SwaggerGenerator
        --included, -i
          Include Section (comma separated)
        --excluded, -e
          Exclude Section (comma separated)
        --help, -?, -h
    
        --output-file, -o
          Output file to place generated swagger


Manual Build & Run
^^^^^^^^^^^^^^^^^^^^^^^

To manually build and run the CDS Code Generator using Maven, run:

.. code-block:: bash

    user@cds:~/git$ git clone https://github.com/ConsumerDataStandardsAustralia/cds-codegen
    user@cds:~/git$ cd cds-codegen
    user@cds:~/git/cds-codegen$ mvn clean install
    user@cds:~/git$ cd modules/cds-codegen-core
    user@cds:~/git/cds-codegen/modules/cds-codegen-core$ mvn clean package

Once this is completed you can use ``cds-codegen`` to produce a number of output types.

Swagger Generation
^^^^^^^^^^^^^^^^^^^^^

To generate a swagger file based on ``cds-models`` for Banking product APIs you can use the SwaggerGenerator implementation as follows:

.. code-block::

    user@cds:~/git/cds-codegen/modules/cds-codegen-core$ java -jar target/cds-codegen-core-0.9.3-SNAPSHOT.jar -i "BankingProducts" -o /tmp/swagger.json
     2019-07-01 18:21:32.380  INFO   --- [           main] org.reflections.Reflections              : Reflections took 75 ms to scan 1 urls, producing 6 keys and 187 values 
     2019-07-01 18:21:32.727  INFO   --- [           main] a.o.c.c.g.openapi.SwaggerGenerator       : Successfully wrote swagger to /tmp/swagger.json
       
To generate a Java Client Library output you can use the CodeGenerator implementation as follows:

.. code-block::

    user@cds:~/git/cds-codegen/modules/cds-codegen-core$ java -jar target/cds-codegen-core-0.9.3-SNAPSHOT.jar -i "BankingProducts" -g au.org.consumerdatastandards.codegen.generator.code.CodeGenerator -t cds-client-java -o /tmp/outputgen
    2019-07-01 18:22:58.296  INFO   --- [           main] org.reflections.Reflections              : Reflections took 84 ms to scan 1 urls, producing 6 keys and 187 values 
    2019-07-01 18:22:58.564  INFO   --- [           main] org.reflections.Reflections              : Reflections took 49 ms to scan 1 urls, producing 20 keys and 304 values 
    2019-07-01 18:22:58.668  INFO   --- [           main] org.reflections.Reflections              : Reflections took 22 ms to scan 1 urls, producing 20 keys and 304 values 
    2019-07-01 18:22:59.525  INFO   --- [           main] org.reflections.Reflections              : Reflections took 32 ms to scan 1 urls, producing 20 keys and 304 values 
    2019-07-01 18:22:59.545  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/ApiCallback.java
    2019-07-01 18:22:59.672  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/ApiClient.java
    2019-07-01 18:22:59.682  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/ApiException.java
    2019-07-01 18:22:59.692  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/ApiResponse.java
    2019-07-01 18:22:59.696  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/Configuration.java
    2019-07-01 18:22:59.705  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/GzipRequestInterceptor.java
    2019-07-01 18:22:59.729  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/JSON.java
    2019-07-01 18:22:59.736  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/Pair.java
    2019-07-01 18:22:59.743  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/ProgressRequestBody.java
    2019-07-01 18:22:59.749  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/ProgressResponseBody.java
    2019-07-01 18:22:59.756  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/StringUtil.java
    2019-07-01 18:22:59.759  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/pom.xml
    2019-07-01 18:22:59.772  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/ResponseBankingProductList.java
    2019-07-01 18:22:59.788  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/PaginatedResponse.java
    2019-07-01 18:22:59.806  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/LinksPaginated.java
    2019-07-01 18:22:59.818  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/MetaPaginated.java
    2019-07-01 18:22:59.829  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/ResponseBankingProductListData.java
    2019-07-01 18:22:59.864  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProduct.java
    2019-07-01 18:22:59.881  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingEnumProductCategory.java
    2019-07-01 18:22:59.907  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductAdditionalInformation.java
    2019-07-01 18:22:59.919  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/ParamEffective.java
    2019-07-01 18:22:59.935  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/ParamProductCategory.java
    2019-07-01 18:22:59.950  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/ResponseBankingProductById.java
    2019-07-01 18:22:59.966  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BaseResponse.java
    2019-07-01 18:22:59.977  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/Links.java
    2019-07-01 18:22:59.986  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/Meta.java
    2019-07-01 18:23:00.046  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductDetail.java
    2019-07-01 18:23:00.061  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductBundle.java
    2019-07-01 18:23:00.076  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductFeature.java
    2019-07-01 18:23:00.092  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductConstraint.java
    2019-07-01 18:23:00.107  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductEligibility.java
    2019-07-01 18:23:00.134  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductFee.java
    2019-07-01 18:23:00.170  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductDiscount.java
    2019-07-01 18:23:00.190  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductDiscountEligibility.java
    2019-07-01 18:23:00.217  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductDepositRate.java
    2019-07-01 18:23:00.244  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductRateTier.java
    2019-07-01 18:23:00.255  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductRateCondition.java
    2019-07-01 18:23:00.278  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductRateTierSubTier.java
    2019-07-01 18:23:00.302  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/model/BankingProductLendingRate.java
    2019-07-01 18:23:00.362  INFO   --- [           main] a.o.c.c.generator.code.VelocityHelper    : Wrote file: /tmp/outputgen/src/main/java/au/org/consumerdatastandards/client/api/BankingProductsAPI.java
    2019-07-01 18:23:00.363  INFO   --- [           main] a.o.c.c.generator.code.CodeGenerator     : Code Generator output complete

    
    
