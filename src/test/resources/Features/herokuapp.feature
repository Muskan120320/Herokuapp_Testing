Feature: Herokuapp Testing

  Scenario Outline: Check the functionality of A/B Testing
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink A/B Testing
    Then user can view page
    Examples:
      | Page Type  |
      | Heroku |


  Scenario Outline: Check the functionality of Add Element Button
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Add/Remove Elements
    And user clicks on Add  button
    Then user can view Delete button
    Examples:
      | Page Type  |
      |  Heroku    |


  Scenario Outline: Check the functionality of Checkboxes
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Checkboxes
    And user clicks on Checkbox1 button
#    Then user can view selected checkbox
    Examples:
      | Page Type  |
      |  Heroku  |

  Scenario Outline: Check User is able to login
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Basic Auth
    And user enters <User Name> and <Password> in the alert
    Then user can view <Message>
    Examples:
      | Page Type | User Name | Password |                  Message                                    |
      |  Heroku | admin    | admin    |      Congratulations! You must have the proper credentials.    |

  Scenario Outline: Check the functionality of Dropdown
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Dropdown
    And user selects option Option 1 in  Dropdown
    Examples:
      | Page Type  |
      |   Heroku  |

    Scenario Outline: Check the functionality of click here
      Given user navigates to <Page Type> page
      When user clicks on the hyperlink Dynamic Content
      And user clicks on the hyperlink click here
      Then user can view dynamic content
      Examples:
        | Page Type |
        |  Heroku   |

  Scenario Outline: Check the functionality of dynamic loading elements
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Dynamic Loading
    And user clicks on the hyperlink Example 1: Element on page that is hidden
    And user navigates to Next page
    And user clicks on Start button
    Then user can view <Message>
    Examples:
      | Page Type  |    Message        |
      |  Heroku   |  Hello World!      |


  Scenario Outline: Check user is able to view images
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Broken Images
    Then user can view image links on the page
    Examples:
      | Page Type |
      |  Heroku |


    Scenario Outline: Check user can Retrieve Password
      Given user navigates to <Page Type> page
      When user clicks on the hyperlink Forgot Password
      And user enters value <E-mail> in the e-mail input field
      And user clicks on Retrieve button
      Then user can view <Message>
      Examples:
        | Page Type | E-mail |     Message                |
        |  Heroku | Hero   |  Internal Server Error     |

     Scenario Outline: Check user can download files
       Given user navigates to <Page Type> page
       When user clicks on the hyperlink File Download
       And user clicks on the hyperlink 5mb script.xml
       Then user can view downloaded files
       Examples:
         | Page Type |
         |   Heroku  |


      Scenario Outline: Check user can Display add
        Given user navigates to <Page Type> page
        When user clicks on the hyperlink Entry Ad
        And user can view add
        And user clicks element close
        Then user can view page
        Examples:
          | Page Type |
          |  Heroku |

      Scenario Outline: Check user can find location
        Given user navigates to <Page Type> page
        When user clicks on the hyperlink Geolocation
        And user clicks on Where button
        And user accepts alert pop up
        Then user can view <Location>
        Examples:
         | Page Type | Location|
         |   Heroku | location |


       Scenario Outline: Check the functionality of Login page
         Given user navigates to <Page Type> page
         When user clicks on the hyperlink Form Authentication
         And user enters value <User Name> in the Username input field
         And user enters value <Password> in the Password input field
         And user clicks on Log_in button
         Then user can view <Message>
         Examples:
         | Page Type   | User Name | Password            | Message  |
         |  Heroku   | tomsmith  | SuperSecretPassword!  |Secure Area|


      Scenario Outline: Check user can display notification message
        Given user navigates to <Page Type> page
        When user clicks on the hyperlink Notification Messages
        And user clicks on the hyperlink Click here
        Then user can view Notification Message
        Examples:
          | Page Type |
         |   Heroku     |