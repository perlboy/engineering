BankingProductLendingRate
===========================



Properties
------------

.. list-table::
    :widths: 10 5 50 10
    :header-rows: 1

    * - Name
      - Type
      - Description
      - Required
    * - lendingRateType
      - LendingRateType
      - The type of rate (fixed, variable, etc). See the next section for an overview of valid values and their meaning
      - true
    * - rate
      - String
      - The rate to be applied
      - true
    * - comparisonRate
      - String
      - A comparison rate equivalent for this rate
      - false
    * - calculationFrequency
      - String
      - The period after which the rate is applied to the balance to calculate the amount due for the period. Calculation of the amount is often daily (as balances may change) but accumulated until the total amount is 'applied' to the account (see applicationFrequency). Formatted according to [ISO 8601 Durations](https://en.wikipedia.org/wiki/ISO_8601#Durations)
      - false
    * - applicationFrequency
      - String
      - The period after which the calculated amount(s) (see calculationFrequency) are 'applied' (i.e. debited or credited) to the account. Formatted according to [ISO 8601 Durations](https://en.wikipedia.org/wiki/ISO_8601#Durations)
      - false
    * - interestPaymentDue
      - InterestPaymentDue
      - When loan payments are due to be paid within each period. The investment benefit of earlier payments affect the rate that can be offered
      - false
    * - tiers
      - List<BankingProductRateTier>
      - Rate tiers applicable for this rate
      - false
    * - additionalValue
      - String
      - Generic field containing additional information relevant to the lendingRateType specified. Whether mandatory or not is dependent on the value of lendingRateType
      - false
    * - additionalInfo
      - String
      - Display text providing more information on the rate.
      - false
    * - additionalInfoUri
      - URI
      - Link to a web page with more information on this rate
      - false

