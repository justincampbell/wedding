Feature: Guest

  In order to make it to the wedding
  As a guest
  I want to see information about the wedding

  Scenario: Date
    When I visit the site
    Then I should see Beth
    And I should see Justin
    And I should see 1 • 5 • 13

  Scenario: About Us
    When I click "About Us"
    Then I should see paragraphs

  Scenario: Our Party
    When I click "Our Party"
    Then I should see paragraphs

  Scenario: Location
    When I click "Location"
    Then I should see paragraphs

  Scenario: Registry
    When I click "Registry"
    Then I should see images with links

  Scenario: Travel
    When I click "Travel"
    Then I should see a "Hotel" section
    And I should see a "Direction" section
    And I should see an "Activities" section

