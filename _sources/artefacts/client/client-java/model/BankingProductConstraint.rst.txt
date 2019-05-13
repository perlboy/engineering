BankingProductConstraint
==========================



Properties
------------

.. list-table::
    :widths: 10 5 50 10
    :header-rows: 1

    * - Name
      - Type
      - Description
      - Required
    * - constraintType
      - ConstraintType
      - The type of constraint described.  See the next section for an overview of valid values and their meaning
      - true
    * - additionalValue
      - String
      - Generic field containing additional information relevant to the constraintType specified.  Whether mandatory or not is dependent on the value of constraintType
      - false
    * - additionalInfo
      - String
      - Display text providing more information the constraint
      - false
    * - additionalInfoUri
      - URI
      - Link to a web page with more information on the constraint
      - false

