BankingProductFee
===================



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
      - Name of the fee
      - true
    * - feeType
      - FeeType
      - The type of fee
      - true
    * - amount
      - String
      - The amount charged for the fee. One of amount, balanceRate, transactionRate and accruedRate is mandatory
      - true
    * - balanceRate
      - String
      - A fee rate calculated based on a proportion of the balance. One of amount, balanceRate, transactionRate and accruedRate is mandatory
      - false
    * - transactionRate
      - String
      - A fee rate calculated based on a proportion of a transaction. One of amount, balanceRate, transactionRate and accruedRate is mandatory
      - false
    * - accruedRate
      - String
      - A fee rate calculated based on a proportion of the calculated interest accrued on the account. One of amount, balanceRate, transactionRate and accruedRate is mandatory
      - false
    * - accrualFrequency
      - String
      - The indicative frequency with which the fee is calculated on the account. Only applies if balanceRate or accruedRate is also present. Formatted according to [ISO 8601 Durations](https://en.wikipedia.org/wiki/ISO_8601#Durations)
      - false
    * - currency
      - String
      - The currency the fee will be charged in. Assumes AUD if absent
      - false
    * - additionalValue
      - String
      - Generic field containing additional information relevant to the feeType specified. Whether mandatory or not is dependent on the value of feeType
      - false
    * - additionalInfo
      - String
      - Display text providing more information on the fee
      - false
    * - additionalInfoUri
      - URI
      - Link to a web page with more information on this fee
      - false
    * - discounts
      - List<BankingProductDiscount>
      - An optional list of discounts to this fee that may be available
      - false

