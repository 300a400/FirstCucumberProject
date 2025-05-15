Feature: HomePage
@navigate
  Scenario: Verify HomePage title is displayed
    Given User launches chrome browser
    When User open ilcarro HomePage
    Then User verifies HomePage title