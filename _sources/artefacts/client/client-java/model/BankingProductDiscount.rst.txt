BankingProductDiscount
========================



Properties
------------

.. list-table::
    :widths: 10 5 50 10
    :header-rows: 1

    * - Name
      - Type
      - Description
      - Required
    * - description
      - String
      - Description of the discount
      - true
    * - discountType
      - DiscountType
      - The type of discount. See the next section for an overview of valid values and their meaning
      - true
    * - amount
      - String
      - Value of the discount
      - true
    * - balanceRate
      - String
      - A discount rate calculated based on a proportion of the balance. Note that the currency of the fee discount is expected to be the same as the currency of the fee itself. One of amount, balanceRate, transactionRate, accruedRate and feeRate is mandatory. Unless noted in additionalInfo, assumes the application and calculation frequency are the same as the corresponding fee
      - false
    * - transactionRate
      - String
      - A discount rate calculated based on a proportion of a transaction. Note that the currency of the fee discount is expected to be the same as the currency of the fee itself. One of amount, balanceRate, transactionRate, accruedRate and feeRate is mandatory
      - false
    * - accruedRate
      - String
      - A discount rate calculated based on a proportion of the calculated interest accrued on the account. Note that the currency of the fee discount is expected to be the same as the currency of the fee itself. One of amount, balanceRate, transactionRate, accruedRate and feeRate is mandatory. Unless noted in additionalInfo, assumes the application and calculation frequency are the same as the corresponding fee
      - false
    * - feeRate
      - String
      - A discount rate calculated based on a proportion of the fee to which this discount is attached. Note that the currency of the fee discount is expected to be the same as the currency of the fee itself. One of amount, balanceRate, transactionRate, accruedRate and feeRate is mandatory. Unless noted in additionalInfo, assumes the application and calculation frequency are the same as the corresponding fee
      - false
    * - additionalValue
      - String
      - Generic field containing additional information relevant to the discountType specified. Whether mandatory or not is dependent on the value of discountType
      - false
    * - additionalInfo
      - String
      - Display text providing more information on the discount
      - false
    * - additionalInfoUri
      - URI
      - Link to a web page with more information on this discount
      - false
    * - eligibility
      - List<BankingProductDiscountEligibility>
      - Eligibility constraints that apply to this discount
      - false

