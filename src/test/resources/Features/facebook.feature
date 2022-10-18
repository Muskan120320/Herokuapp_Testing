Feature: Facebook Login
  Scenario Outline: Check user is able to login
    Given user navigates to <Page type> page
    When user enters value <Username> in the username input field
    And user enters value <Password> in the Password input field
    And user clicks on login button
    Then user can view <Message>
    Examples:
      | Page type  | Username  | Password | Message|
      | Facebook   | Muskan    | Manhas   |        |