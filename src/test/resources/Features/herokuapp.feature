Feature: Heroku Testing

  Scenario Outline: Check the functionality of A/B Testing
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink A/B Testing
    Then user can view A/b testing page
    Examples:
      | Page Type  |
      | Heroku |


  Scenario Outline: Check the functionality of Add Element Button
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Add/Remove Elements
    And user clicks on Add  button
    And user clicks on Delete button
    Then user can view Add Element
    Examples:
      | Page Type  |
      |  Heroku    |


  Scenario Outline: Check the functionality of Checkboxes
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Checkboxes
    And user clicks on Checkbox 1 button
    Then user can view selected Checkbox 1
    Examples:
      | Page Type  |
      |  Heroku  |

  Scenario Outline: Check User is able to login     //TODO  //updated
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Basic Auth
    And user enters <User Name> and <Password> in the alert
    Then user can view <Message>
    Examples:
      | Page Type | User Name | Password     |                  Message                                    |
      |  Heroku |   name      | password1    |      Congratulations! You must have the proper credentials.    |

  Scenario Outline: Check the functionality of Dropdown
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Dropdown
    And user selects option Option 2 in  Dropdown
    Then user can view Option 2 selected
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


  Scenario Outline: Check the visibility of images
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Broken Images
    Then user can view images
    Examples:
      | Page Type |
      |  Heroku   |


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
        And user clicks on element close
        Then user can view Entry add
        Examples:
          | Page Type |
          |  Heroku |

      Scenario Outline: Check user can find location
        Given user navigates to <Page Type> page
        When user clicks on the hyperlink Geolocation
        And user clicks on Where button
        And user accepts the alert pop up
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

     Scenario Outline: Check the functionality of pop up
      Given user navigates to <Page Type> page
      When user clicks on the hyperlink Exit Intent
      And user moves the pointer outside webpage
      Then user can view popup add
      Examples:
       | Page Type |
       | Heroku    |


  Scenario Outline: Check the functionality of file uploading
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink File Upload
    And user clicks on element choose
    And user selects the file to upload
    And user clicks on Upload1 button
    Examples:
      | Page Type  |
      | Heroku |

  Scenario Outline: Check the functionality of Switching windows
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Multiple Windows
    And user clicks on the hyperlink Click Here
    Then user can view newWindow
    Examples:
      | Page Type |
     | Heroku     |

  Scenario Outline: Check functionality of Secure file download
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Secure File Download
    And user enters <User Name> and <Password> in the alerts
    And user clicks on the hyperlink 5mb script.xml
    Then user can view downloaded files
    Examples:
      | Page Type | User Name | Password |
      |  Heroku |   name      | password1   |

  Scenario Outline: Check the functionality of floating menu
    Given user navigates to <Page Type> page
    When user clicks on the hyperlink Floating Menu
    And user scrolls down at bottom
    Then user can view bottom of the page
    Examples:
      | Page Type |
      | Heroku    |