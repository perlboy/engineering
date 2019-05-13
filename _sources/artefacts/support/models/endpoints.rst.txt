.. _cds-models-endpoints:

Endpoints
================================================

The `cds-models` library is primarily focused on the definition of Endpoint's within the :term:`Consumer Data Standards`.

To enable this a number of annotations have been defined to provide sufficient description capability.

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
| and Enums           | * @EndpointAuth                                                                       |
|                     | * @RequestMethod                                                                      |
+---------------------+---------------------------------------------------------------------------------------+

Endpoint Response
------------------------

+---------------------+---------------------------------------------------------------------------------------+
| Annotation Class    | @au.org.consumerdatastandards.support.EndpointResponse                                |
+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The @EndpointResponse annotation defines the types of responses expected from an      |
|                     | individual *Endpoint*. Specifically this includes the HTTP Response Code and          |
|                     | Response class data intended for use in the response                                  |
+---------------------+---------------------------------------------------------------------------------------+
| Input Parameters    | +---------------+--------------------------------------------------------------------+|
|                     | | Attribute     | Description                                                        ||
|                     | +===============+====================================================================+|
|                     | | description   | A long description of the Endpoint responsen                       ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | responseCode  | A specific ResponseCode defined within the ResponseCode Enum       ||
|                     | +---------------+--------------------------------------------------------------------+|
|                     | | content       | A class (ie. a POJO) to determine a serialisable structure from    ||
|                     | +---------------+--------------------------------------------------------------------+|
+---------------------+---------------------------------------------------------------------------------------+
| Related Annotations | * @EndpointResponse                                                                   |
| and Enums           | * ResponseCode                                                                        |
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



