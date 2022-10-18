Feature: Add/Remove Elements

  Scenario Outline: Check the functionality of Add Element Button
    Given user navigates to <Page Type> page
    When user clicks on Add button
    Then user can view delete button
    Examples:
      | Page Type |
      | heroku |

