
.. _cds-client-java:

CDS Java Client Library (cds-client-java)
================================================

+---------------------+---------------------------------------------------------------------------------------+
| Summary             | The Java Client Library is intended for integration into :term:`Data Recipient`\'s    |
|                     | software deployments as part of delivering their product or service. It is intended as|
|                     | a :term:`Reference Implementation` of the :term:`Consumer Data Standards` from a      |
|                     | :term:`Data Recipient` ("client") perspective.                                        |
+---------------------+---------------------------------------------------------------------------------------+
| Repositories        | `GitHub`_                                                                             |
|                     |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Release Status      | Beta                                                                                  |
+---------------------+---------------------------------------------------------------------------------------+
| Generation Status   | Automatic from :ref:`cds-codegen`                                                     |
+---------------------+---------------------------------------------------------------------------------------+
| Verified Snapshot   | 0.0.2-SNAPSHOT                                                                        |
| Snapshot            |                                                                                       |
+---------------------+---------------------------------------------------------------------------------------+
| Technologies Used   | * Java                                                                                |
|                     | * Maven                                                                               |
+---------------------+---------------------------------------------------------------------------------------+

.. _GitHub: https://github.com/ConsumerDataStandardsAustralia/cds-client-java

Quick Start
-----------------

.. include:: quickstart.rst
   :start-after: start-content

Endpoints
------------------------------

All URIs are relative to `https://api.holder.com/cds-au/v1 <https://api.holder.com/cds-au/v1>`__

.. list-table::
    :widths: 10 5 50 10
    :header-rows: 1

    * - Class
      - Method
      - HTTP Request
      - Description
    * - Products API
      - `listProducts <sections/BankingProductsAPI.html#listproducts>`__
      - **GET** /banking/products
      - Get Products
    * - Products API
      - `getProductDetail <sections/BankingProductsAPI.html#getproductdetail>`__
      - **GET** /banking/products/{productId}
      - Get Product Detail

.. toctree::
   :hidden:
   :glob:
  
   sections/BankingProductsAPI    

Models
-------------------------------

.. toctree::
   :glob:
   :titlesonly:
   
   model/ResponseBankingProductList
   model/PaginatedResponse
   model/LinksPaginated
   model/MetaPaginated
   model/ResponseBankingProductListData
   model/BankingProduct
   model/BankingEnumProductCategory
   model/BankingProductAdditionalInformation
   model/ParamEffective
   model/ParamProductCategory
   model/ResponseBankingProductById
   model/BaseResponse
   model/Links
   model/Meta
   model/BankingProductDetail
   model/BankingProductBundle
   model/BankingProductFeature
   model/FeatureType
   model/BankingProductConstraint
   model/ConstraintType
   model/BankingProductEligibility
   model/EligibilityType
   model/BankingProductFee
   model/FeeType
   model/BankingProductDiscount
   model/DiscountType
   model/BankingProductDiscountEligibility
   model/DiscountEligibilityType
   model/BankingProductDepositRate
   model/DepositRateType
   model/BankingProductRateTier
   model/UnitOfMeasure
   model/RateApplicationMethod
   model/BankingProductRateCondition
   model/BankingProductRateTierSubTier
   model/UnitOfMeasure
   model/RateApplicationMethod
   model/BankingProductLendingRate
   model/LendingRateType
   model/InterestPaymentDue

