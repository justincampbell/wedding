Feature: Guest

  In order to make it to the wedding
  As a guest
  I want to see information about the wedding

  Background:
    When I visit the site

  Scenario: Names
    Then I should see Beth
    And I should see Justin

  Scenario: Date
    Then I should see January 5th, 2013
