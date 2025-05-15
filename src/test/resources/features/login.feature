Feature: Login
@validData
  Scenario: Login with valid data
    Given User launches chrome browser
    When User open ilcarro HomePage
    And User clicks on Login link
    And User enters valid data
    And User clicks on Yalla button
    Then User verify Success message is displayed