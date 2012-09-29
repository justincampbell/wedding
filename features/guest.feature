Feature: Guest

  In order to make it to the wedding
  As a guest
  I want to see information about the wedding

  Background:
    Given I visit the site

  Scenario: Names and Date
    Then I should see "Beth"
    And I should see "Justin"
    And I should see "1 • 5 • 13"

  Scenario: Us
    When I click "Us"
    Then I should see paragraphs

  Scenario: Party
    When I click "Party"
    Then I should see paragraphs

  Scenario: Venue
    When I click "Venue"
    Then I should see paragraphs

  Scenario: Registry
    When I click "Registry"
    Then I should see images with links

  Scenario: Travel
    When I click "Travel"
    Then I should see a "Directions" section
    And I should see a "Hotel" section
    And I should see a "Flights" section

