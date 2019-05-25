BankingProductBundle
======================



Properties
------------

.. list-table::
    :widths: 10 5 50 10
    :header-rows: 1

    * - Name
      - Type
      - Description
      - Required
    * - name
      - String
      - Name of the bundle
      - true
    * - description
      - String
      - Description of the bundle
      - true
    * - additionalInfo
      - String
      - Display text providing more information on the bundle
      - false
    * - additionalInfoUri
      - URI
      - Link to a web page with more information on the bundle criteria and benefits
      - false
    * - productIds
      - List<String>
      - Array of product IDs for products included in the bundle
      - true

