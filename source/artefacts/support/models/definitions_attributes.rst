
Definitions & Attributes
================================================

For each *Endpoint* defined within `cds-models` it is necessary to describe the response data. Within `cds-models` this is described as Data Definitions. 

Side by Side with this is a requirement to clearly outlined attribute values and types. This led to the introduction on @CDSDataType to facilitate industry specific value verification.

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

CDS Data Types
------------------

In order to support the unique components of the emerging Standards an annotation of @CDSDataType has been created.

This allows the specification of commonly generic types (such as Strings) to have a CDS specific type. 

These types are listed as follows:

   * DateTime - Date Time String
   * Date - Date String
   * Duration - A Duration String
   * MaskedPAN - A String representing a Masked PAN
   * MaskedAccount - A String representing a Masked Account Number
   * NaturalNumber - A natural number with a minimum of 0 and a max of 2^32
   * ASCII - A generic ASCII formatted string
   * PositiveInteger - A natural number between 1 and 2^32
   * NegativeInteger - A natural number between -2^32 and 0
   * Rate - A String Representing a rate between -100% and +100% in decimal format
   * Amount - A String representing an Amount with at least 2 decimal places
   * Currency - A String representing a common set of currencies
   * URI - A String representing a URI
   * Boolean - A string representing a boolean
   * ExternalRef - A string that refers to an External specification and not enforced by ``cds-models``

Custom Attributes
--------------------------

.. code-block:: java

    @CustomAttributes({
        @CustomAttribute(name = "x-version", value = "1")
    })
    

+---------------------+---------------------------------------------------------------------------------------+
| Annotation Class    | @au.org.consumerdatastandards.support.CustomAttributes                                |
+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The @CustomAttributes annotation provides the ability to specify a set of static      |
|                     | custom attributes (eg. x-version) to be specified in generated swaggeer output        |
+---------------------+---------------------------------------------------------------------------------------+
| Input Parameters    | An array of @CustomAttribute containing:                                              |
|                     |                                                                                       |
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | Attribute     | Description                                                        ||
|                     | +===============+====================================================================+|
|                     | | name          | Namer of the custom attribute                                      ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | value         | Value of the Attribute                                             ||
|                     | +---------------+--------------------------------------------------------------------+|
+---------------------+---------------------------------------------------------------------------------------+
| Related Annotations | * @CustomAttribute                                                                    |
+---------------------+---------------------------------------------------------------------------------------+


