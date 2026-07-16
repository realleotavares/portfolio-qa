# language: en
Feature: Interbank Funds Transfer
  As a ParaBank account holder
  I want to be able to transfer funds between my accounts
  So that I can manage my finances autonomously

  Background:
    Given that I have a checking account "12345" with a balance of "$500.00"
    And that I have a savings account "67890" with a balance of "$100.00"
    And I am authenticated in the ParaBank system
    And I access the "Transfer Funds" page

  @positive @financial
  Scenario: Successfully transfer funds between accounts
    When I fill in the Amount field with "100.00"
    And I select the account "12345" in the From account field
    And I select the account "67890" in the To account field
    And I submit the transaction
    Then the system should display the message "Transfer Complete!"
    And the amount of "$100.00" should be debited from account "12345"
    And the amount of "$100.00" should be credited to account "67890"

  @negative @financial @boundary
  Scenario: Attempt to transfer funds without sufficient balance
    When I fill in the Amount field with "1000.00"
    And I select the account "12345" in the From account field
    And I select the account "67890" in the To account field
    And I submit the transaction
    Then the system should not process the transfer
    And the system should display the error message "Insufficient Funds"
    And the balance of both accounts should remain unchanged
