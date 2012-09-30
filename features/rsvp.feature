Feature: RSVP

  Background:
    Given I am John Doe from 12345
    And I visit the site
    And I click "RSVP"

  Scenario: Login
    When I sign in as John Doe from 12345
    Then I should see "Doe Party"
    And I should see my party

