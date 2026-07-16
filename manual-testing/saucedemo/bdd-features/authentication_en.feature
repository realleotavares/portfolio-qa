# language: en
Feature: User Authentication
  As a SauceDemo e-commerce user
  I want to be able to log into the system
  So that I can view the inventory and make purchases

  Background:
    Given that I am on the SauceDemo login page

  @positive @smoke
  Scenario: Successful login using valid credentials
    When I fill in the username field with "standard_user"
    And I fill in the password field with "secret_sauce"
    And I click the Login button
    Then I should be redirected to the inventory page
    And the page title should be "Swag Labs"

  @negative @security
  Scenario: Login attempt with a locked out user
    When I fill in the username field with "locked_out_user"
    And I fill in the password field with "secret_sauce"
    And I click the Login button
    Then I should not be redirected to the inventory page
    And the system should display an error message containing "Epic sadface: Sorry, this user has been locked out."

  @negative
  Scenario Outline: Invalid login attempts
    When I fill in the username field with "<username>"
    And I fill in the password field with "<password>"
    And I click the Login button
    Then the system should display an error message containing "<error_message>"

    Examples:
      | username      | password     | error_message                                               |
      | standard_user | wrong123     | Epic sadface: Username and password do not match any user   |
      | fake_user     | secret_sauce | Epic sadface: Username and password do not match any user   |
      |               | secret_sauce | Epic sadface: Username is required                          |
      | standard_user |              | Epic sadface: Password is required                          |
