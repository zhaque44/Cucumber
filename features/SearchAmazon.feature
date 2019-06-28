Feature: Amazon Shopping Cart

  Scenario: Reviewing the items in my Shopping Cart on Amazon
    Given a user goes to Amazon and searchs for three unique items
    When they are viewing their Shopping Cart they only see three items
    And if they decide to move one 
    Then they will only have two items