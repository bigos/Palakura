Feature: Try to fail log in
  In order to know if it can be done in Spinach
  As a developer
  I want to fail log in

  Scenario: wrong password
    Given I have test user in the database
    And I visit login page
    And I enter correct login and incorrect password
    When I click Login button
    Then page should contain Password is not valid
    
  Scenario: no user name
    Given I have test user in the database
    And I visit login page
    And I do not enter login
    When I click Login button
    Then page should contain Login cannot be blank

  Scenario: no password
    Given I have test user in the database
    And I visit login page
    And I do not enter password
    When I click Login button
    Then page should contain Password cannot be blank
