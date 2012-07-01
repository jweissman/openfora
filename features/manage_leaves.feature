Feature: manages leaves
  In order to create lasting value
  A content creator
  Should be able to create and manage leaves

  Scenario: create a new leaf
    Given I have a leaf with name 'alpha'
    And the leaf 'alpha' is described with 'is a great leaf'
    And the leaf 'alpha' is of type 'Forum'

    When I go to the homepage
    Then I should see "There is 1 forum"
    When I follow "visit forum alpha"
    Then I should see "alpha is a great leaf"

    #When ...
    #AND ...

    #Then ...
    #AND ...