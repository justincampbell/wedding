Feature: Guest

  In order to make it to the wedding
  As a guest
  I want to see information about the wedding

  Scenario: Names and date
    When I visit the site
    Then I should see Beth
    And I should see Justin
    And I should see January 5th, 2013
