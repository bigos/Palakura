Feature: Test how spinach works
  In order to know what the heck is spinach
  As a developer
  I want it to get some output

  Scenario: visiting a page
    When I visit home page
    Then the I should see Welcome aboard
    #works only with initial commit
