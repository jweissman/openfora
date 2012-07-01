Feature: manages leaves
  In order to create lasting value
  A content creator
  Should be able to create and manage leaves

  Scenario: welcome user to fora
    Given I am on the home page
    Then I should see "Welcome to Fora!"

  Scenario: display a leaf
    Given I have a forum named "alpha" described "lorem ipsum"     
    When I am on the home page
    Then I should see "alpha"
     And I should see "lorem ipsum"