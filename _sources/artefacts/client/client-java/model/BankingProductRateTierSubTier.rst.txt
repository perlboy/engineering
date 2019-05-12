BankingProductRateTierSubTier
===============================


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
      - A display name for the tier
      - true
    * - unitOfMeasure
      - UnitOfMeasure
      - The unit of measure that applies to the tierValueMinimum and tierValueMaximum values e.g. 'DOLLAR', 'MONTH' (in the case of term deposit tiers), 'PERCENT' (in the case of loan-to-value ratio or LVR)
      - true
    * - minimumValue
      - BigDecimal
      - The number of tierUnitOfMeasure units that form the lower bound of the tier. The tier should be inclusive of this value
      - true
    * - maximumValue
      - BigDecimal
      - The number of tierUnitOfMeasure units that form the upper bound of the tier or band. For a tier with a discrete value (as opposed to a range of values e.g. 1 month) this must be the same as tierValueMinimum. Where this is the same as the tierValueMinimum value of the next-higher tier the referenced tier should be exclusive of this value. For example a term deposit of 2 months falls into the upper tier of the following tiers: (1 – 2 months, 2 – 3 months)
      - true
    * - rateApplicationMethod
      - RateApplicationMethod
      - The method used to calculate the amount to be applied using one or more tiers. A single rate may be applied to the entire balance or each applicable tier rate is applied to the portion of the balance that falls into that tier (referred to as 'bands' or 'steps')
      - false
    * - applicabilityConditions
      - BankingProductRateCondition
      - 
      - false

