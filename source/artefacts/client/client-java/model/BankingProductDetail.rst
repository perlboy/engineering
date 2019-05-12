BankingProductDetail
======================

BankingProductDetail extends `BankingProduct <BankingProduct>`__ 
Properties
------------

.. list-table::
    :widths: 10 5 50 10
    :header-rows: 1

    * - Name
      - Type
      - Description
      - Required
    * - bundles
      - List<BankingProductBundle>
      - An array of bundles that this product participates in.  Each bundle is described by free form information but also by a list of product IDs of the other products that are included in the bundle.  It is assumed that the current product is included in the bundle also
      - false
    * - features
      - List<BankingProductFeature>
      - Array of features available for the product
      - false
    * - constraints
      - List<BankingProductConstraint>
      - Constraints on the application for or operation of the product such as minimum balances or limit thresholds
      - false
    * - eligibility
      - List<BankingProductEligibility>
      - Eligibility criteria for the product
      - false
    * - fees
      - List<BankingProductFee>
      - Fees applicable for the product
      - false
    * - depositRates
      - List<BankingProductDepositRate>
      - Interest rates available for deposits
      - false
    * - lendingRates
      - List<BankingProductLendingRate>
      - Interest rates charged against lending balances
      - false

