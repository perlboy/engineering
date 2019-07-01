.. _cds-models-endpoints:

Endpoints
================================================

The `cds-models` library is primarily focused on the definition of Endpoint's within the :term:`Consumer Data Standards`.

To enable this a number of annotations have been defined to provide sufficient description capability.

Endpoint Definition
--------------------------

.. code-block:: java


    @Endpoint(
        path = "/banking/products/{productId}",
        summary = "Get Product Detail",
        description = "Obtain detailed information on a single product offered openly to the market",
        requestMethod = RequestMethod.GET,
        operationId = "getProductDetail",
        responses = {
            @EndpointResponse(
                responseCode = ResponseCode.OK,
                description = "Success",
                content = ResponseBankingProductById.class
            )
        }
    )
    @CustomAttributes({
        @CustomAttribute(name = "x-version", value = "1")
    })
    ResponseBankingProductById getProductDetail(
        @Param(
            name = "productId",
            description = "ID of the specific product requested",
            in = ParamLocation.PATH
        )
        @CDSDataType(CustomDataType.ASCII)
        String productId
    );

+---------------------+---------------------------------------------------------------------------------------+
| Annotation Class    | @au.org.consumerdatastandards.support.Endpoint                                        |
+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The @Endpoint annotation provides the primary location to define an *Endpoint* for the|
|                     | :term:`Consumer Data Standards`.                                                      |
+---------------------+---------------------------------------------------------------------------------------+
| Input Parameters    | +---------------+--------------------------------------------------------------------+|
|                     | | Attribute     | Description                                                        ||
|                     | +===============+====================================================================+|
|                     | | operationId   | A camel case and globally unique operation identifier              ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | summary       | A short summary of the Endpoint purpose                            ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | description   | A long description of the Endpoint operation                       ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | requestMethod | What type of HTTP Request Method to use (@RequestMethod)           ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | path          | The path from which this Endpoint should be accessible             ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | responses     | An array of EndpointResponse                                       ||
|                     | +---------------+--------------------------------------------------------------------+|
+---------------------+---------------------------------------------------------------------------------------+
| Related Annotations | * @EndpointResponse                                                                   |
|                     | * @RequestMethod                                                                      |
+---------------------+---------------------------------------------------------------------------------------+

Endpoint Response Definitions    
--------------------------------

.. code-block:: java

    responses = {
        @EndpointResponse(
            responseCode = ResponseCode.OK,
            description = "Success",
            content = ResponseBankingProductById.class
        )
    }
        

+---------------------+---------------------------------------------------------------------------------------+
| Annotation Class    | @au.org.consumerdatastandards.support.EndpointResponse                                |
+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The @EndpointResponse annotation is used as an array to define responseCodes,         |
|                     | description and content pertinent to an individual response.                          |
+---------------------+---------------------------------------------------------------------------------------+
| Input Parameters    | +---------------+--------------------------------------------------------------------+|
|                     | | Attribute     | Description                                                        ||
|                     | +===============+====================================================================+|
|                     | | responseCode  | A unique response code associated with the defined Endpoint        ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | description   | Describer for the response                                         ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | content       | A class reference to a Java Object (POJO) defining endpoint struct ||
|                     | +---------------+--------------------------------------------------------------------+|
+---------------------+---------------------------------------------------------------------------------------+
| Related Annotations | * @ResponseCode                                                                       |
|                     | * All classes in au.org.consumerdatastandards.api.<type>.models                       |
+---------------------+---------------------------------------------------------------------------------------+

Default Response Definition
-------------------------------

.. code-block:: java

    ResponseBankingProductById getProductDetail(
        @Param(
            name = "productId",
            description = "ID of the specific product requested",
            in = ParamLocation.PATH
        )
        @CDSDataType(CustomDataType.ASCII)
        String productId
    );
    

+---------------------+---------------------------------------------------------------------------------------+
| Annotation Class    | None, this is a Java compiler link which includes method name containing sub          |
|                     | annotations                                                                           |
+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The Default Response definition provides guidance on the accepted parameters for this |
|                     | Endpoint call. This is used as the function definition between client/server during   |
|                     | codegen operations.                                                                   |
+---------------------+---------------------------------------------------------------------------------------+
| Input Parameters    | A set of input parameters annotated by @Param and @CDSDataType which provide name,    |
|                     | description & location (in) components. This is paired with a @CDSDataType overlaid   |
|                     | format definition specific to the implementation of the Consumer Data Standards.      |
|                     |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Related Annotations | * @Param                                                                              |
|                     | * @CDSDataType                                                                        |
+---------------------+---------------------------------------------------------------------------------------+

Endpoint Auth
------------------------

+---------------------+---------------------------------------------------------------------------------------+
| Annotation Class    | @au.org.consumerdatastandards.support.security.EndpointAuth                           |
+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The @EndpointAuth annotation describes the security configuration of a particular     |
|                     | Endpoint. This is used by `cds-codegen` to provide security scaffolding around the    |
|                     | generated outputs.                                                                    |
+---------------------+---------------------------------------------------------------------------------------+
| Input Parameters    | +---------------+--------------------------------------------------------------------+|
|                     | | Attribute     | Description                                                        ||
|                     | +===============+====================================================================+|
|                     | | type          | *EndpointAuthType* (currently only CDS_FAPI)                       ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | scopes        | A list of scopes of required scopes from the *Scope* enumeration   ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | access        | The level of access as defined in *EndpointAuthAccess* enumeration ||
|                     | +---------------+--------------------------------------------------------------------+|
+---------------------+---------------------------------------------------------------------------------------+
| Related Annotations | * @EndpointResponse                                                                   |
| and Enums           | * EndpointAuthType                                                                    |
|                     | * Scope                                                                               |
|                     | * EndpointAuthAccess                                                                  |
+---------------------+---------------------------------------------------------------------------------------+



