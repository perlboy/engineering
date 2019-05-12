BankingProductDiscountEligibility
===================================


Properties
------------

.. list-table::
    :widths: 10 5 50 10
    :header-rows: 1

    * - Name
      - Type
      - Description
      - Required
    * - discountEligibilityType
      - DiscountEligibilityType
      - The type of the specific eligibility constraint for a discount
      - true
    * - additionalValue
      - String
      - Generic field containing additional information relevant to the discountEligibilityType specified. Whether mandatory or not is dependent on the value of discountEligibilityType
      - false
    * - additionalInfo
      - String
      - Display text providing more information on this eligibility constraint
      - false
    * - additionalInfoUri
      - URI
      - Link to a web page with more information on this eligibility constraint
      - false

