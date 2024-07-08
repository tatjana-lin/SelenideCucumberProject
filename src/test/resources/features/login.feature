Feature: Login

  @loginPositive
  Scenario: Successful Login
    Given User is on HomePage
    When User clicks on User icon
    Then User verifies Login form
    When User enters valid data
    And User clicks on Anmelden button
    Then User verifies user name status
    When User clicks on User icon
    Then User verifies user name

  @invalidEmail
  Scenario Outline: Login with invalid email and valid password
    Given User is on HomePage
    When User clicks on User icon
    Then User verifies Login form
    When User enters invalid email and valid password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Anmelden button
    Then User verifies Error Message is displayed
    Examples:
      | email          | password      |
      | aliceemail.com | validPass123$ |
      | alice@emailcom | validPass123$ |
      | alice@email.c  | validPass123$ |
      | alice@l.com    | validPass123$ |

