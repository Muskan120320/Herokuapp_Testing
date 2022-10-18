Feature: Herokuapp Testing

  Scenario Outline: Check the functionality of A/B Testing
    Given user navigates to <Page Type> page
    When user clicks hyperlink A/B Testing
    Then user can view page
    Examples:
      | Page Type  |
      | Internet  |

  Scenario Outline: Check the functionality of Add Element Button
    Given user navigates to <Page Type> page
    When user clicks hyperlink Add/Remove Elements
    And user clicks on Add  button
    Then user can view Delete button
    Examples:
      | Page Type  |
      | Internet  |


  Scenario Outline: Check the functionality of Checkboxes
    Given user navigates to <Page Type> page
    When user clicks hyperlink Checkboxes
    Then user clicks on Checkbox1 button
    Examples:
      | Page Type  |
      | Internet  |


  Scenario Outline: Check User is able to login
    Given user navigates to <Page Type> page
    When user clicks hyperlink Basic Auth
    And user enters <User Name> and <Password> in the alert
    And user clicks on Sign in button
    Then user can view the <Successful Message>
    Examples:
      | Page Type | User Name | Password | Successful Message |
      | Internet | admin    | admin    |                      |

  Scenario Outline: Check the functionality of Dropdown
    Given user navigates to <Page Type> page
    When user clicks hyperlink Dropdown
    And user clicks on dropdown button
    Then user selects option <option1> in <dropdown>
    Examples:
      | Page Type  |
      | Internet  |

    Scenario Outline: Check the functionality of click here
      Given user navigates to <Page Type> page
      When user clicks hyperlink Dynamic Content
      Then user clicks hyperlink click here
      Examples:
        | Page Type |
        | Internet |