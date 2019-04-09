@LoggedOut
Feature: Logging in

  Scenario: User can log in
    Given I have reached the login page
    When I enter a username
      And I enter a password
      And I click submit
    Then I should be logged in
