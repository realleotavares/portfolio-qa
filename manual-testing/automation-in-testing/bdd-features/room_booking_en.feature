# language: en
Feature: Room Booking
  As a guest of the Restful-Booker bed and breakfast
  I want to be able to select dates and book a room
  So that I can guarantee my stay during a trip

  Background:
    Given that I am on the Restful-Booker home page
    And the "Single" room booking panel is visible

  @positive @reservation
  Scenario: Book a room on available dates
    When I select the start date as the "15th" of next month
    And I select the end date as the "20th" of next month
    And I click the "Book this room" button
    And I fill in my personal details (Firstname, Lastname, Email, Phone)
    And I confirm the booking
    Then the system should process the booking successfully
    And I should see the message "Booking Successful!" with the dates summary

  @negative @reservation
  Scenario: Attempt to book a room without providing a first name
    When I select valid dates on the calendar
    And I click the "Book this room" button
    And I fill in my personal details, leaving the "Firstname" field blank
    And I confirm the booking
    Then the booking should not be created
    And the system should display the validation error "Firstname should not be blank" on the form
