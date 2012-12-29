Feature: Try to log in
  In order to know if it can be done in Spinach
  As a developer
  I want to log in

  Scenario: visiting login page
    Given I have test user in the database
    And I visit login page
    And I enter correct login and password
    When I click Login button
    Then page should contain Current login ip
    
