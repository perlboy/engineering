BankingProductEligibility
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
    * - eligibilityType
      - EligibilityType
      - The type of eligibility criteria described.  See the next section for an overview of valid values and their meaning
      - true
    * - additionalValue
      - String
      - Generic field containing additional information relevant to the eligibilityType specified.  Whether mandatory or not is dependent on the value of eligibilityType
      - false
    * - additionalInfo
      - String
      - Display text providing more information on the eligibility criteria. Mandatory if the eligibilityType field is set to OTHER
      - false
    * - additionalInfoUri
      - URI
      - Link to a web page with more information on this eligibility criteria
      - false

