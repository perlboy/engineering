
Definitions & Attributes
================================================

For each *Endpoint* defined within `cds-models` it is necessary to describe the response data. Within `cds-models` this is described as Data Definitions. 

Side by Side with this is a requirement to clearly outline attribute values and types.

Endpoint Definition
--------------------------

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
|                     | | requestMethod | What type of HTTP Request Method to use                            ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | path          | The path from which this Endpoint should be accessible             ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | responses     | An array of EndpointResponse                                       ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | requiredAuth  | An array of EndpointAuth objects describing security patterns      ||
|                     | +---------------+--------------------------------------------------------------------+|
+---------------------+---------------------------------------------------------------------------------------+
| Related Annotations | * @EndpointResponse                                                                   |
|                     | * @EndpointAuth                                                                       |
|                     | * @RequestMethod                                                                      |
+---------------------+---------------------------------------------------------------------------------------+

