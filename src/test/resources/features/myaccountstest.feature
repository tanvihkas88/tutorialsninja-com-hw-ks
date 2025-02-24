Feature: My Account Test

  As a user
  I want to check login/logout/register functionality

  Background: I am on homepage

  @sanity @smoke @regression
  Scenario: User should navigate to register page successfully
    When I click on my account link
    And I call the method selectMyAccountOptions method and pass the parameter "Register"
    Then I should see text register account

  @smoke @regression
  Scenario: User should navigate to login page successfully
    When I click on my account link
    And I call the method selectMyAccountOptions method and pass the parameter "Login"
    Then I should see text returning customer

  @regression
  Scenario: User should register account successfully
    When I click on my account link
    And I call the method selectMyAccountOptions method and pass the parameter "Register"
    And I enter First Name "Kartik"
    And I enter Last Name "Shah"
    And I enter Email "kartik"
    And I enter Telephone "81234567890"
    And I enter Password "kartik8227"
    And I enter Confirm Password "kartik8227"
    And I select Subscribe Yes radio button
    And I click on Privacy Policy check box
    And I click on Continue button for registration
    And I should see the message Your Account Has Been Created!
    And I click on Continue button
    And I click on my account link
    And I call the method selectMyAccountOptions method and pass the parameter "Logout"
    And I should see the text Account Logout
    Then I click on Continue button

  @regression
  Scenario: User should login and logout successfully
    When I click on my account link
    And I call the method selectMyAccountOptions method and pass the parameter "Login"
    And I enter Email "prime123@gmail.com" on login page
    And I enter password "kartik8227" on login page
    And I click on login button
    And I should see My Account text
    And I click on my account link
    And I call the method selectMyAccountOptions method and pass the parameter "Logout"
    And I should see the text Account Logout
    Then I click on Continue button

