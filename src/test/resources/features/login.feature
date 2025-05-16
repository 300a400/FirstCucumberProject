Feature: Login

  @validData
  Scenario: Login with valid data
    Given User launches chrome browser
    When User open ilcarro HomePage
    And User clicks on Login link
    And User enters valid data
    And User clicks on Yalla button
    Then User verify Success message is displayed
    And User quit browser

  @wrongPassword
  Scenario Outline: Login with valid email and wrong password
    Given User launches chrome browser
    When User open ilcarro HomePage
    And User clicks on Login link
    And User enters valid email and wrong password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then User verify Error message is displayed
    And User quit browser
    Examples:
      | email               | password   |
      | roadrunner@mail.com | qtertY!321 |
      | roadrunner@mail.com | !qwebty123 |
      | roadrunner@mail.com | Qverty123! |