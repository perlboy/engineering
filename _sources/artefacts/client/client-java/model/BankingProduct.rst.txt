BankingProduct
================


Properties
------------

.. list-table::
    :widths: 10 5 50 10
    :header-rows: 1

    * - Name
      - Type
      - Description
      - Required
    * - productId
      - String
      - A provider specific unique identifier for this product. This identifier must be unique to a product but does not otherwise need to adhere to ID permanence guidelines.
      - true
    * - effectiveFrom
      - OffsetDateTime
      - The date and time from which this product is effective (ie. is available for origination).  Used to enable the articulation of products to the regime before they are available for customers to originate
      - false
    * - effectiveTo
      - OffsetDateTime
      - The date and time at which this product will be retired and will no longer be offered.  Used to enable the managed deprecation of products
      - false
    * - lastUpdated
      - OffsetDateTime
      - The last date and time that the information for this product was changed (or the creation date for the product if it has never been altered)
      - true
    * - productCategory
      - BankingEnumProductCategory
      - 
      - true
    * - name
      - String
      - The display name of the product
      - true
    * - description
      - String
      - A description of the product
      - true
    * - brand
      - String
      - A label of the brand for the product. Able to be used for filtering. For data providers with single brands this value is still required
      - true
    * - brandName
      - String
      - An optional display name of the brand
      - false
    * - applicationUri
      - URI
      - A link to the an application web page where this product can be applied for.
      - false
    * - isTailored
      - Boolean
      - Indicates whether the product is specifically tailored to a circumstance.  In this case fees and prices are significantly negotiated depending on context. While all products are open to a degree of tailoring this flag indicates that tailoring is expected and thus that the provision of specific fees and rates is not applicable
      - true
    * - additionalInformation
      - BankingProductAdditionalInformation
      - 
      - false

