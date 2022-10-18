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

  Scenario Outline: Check User is able to login    //TODO
    Given user navigates to <Page Type> page
    When user clicks hyperlink Basic Auth
    And user enters <User Name> and <Password> in the alert
    Then user clicks on Sign in button
    Examples:
      | Page Type | User Name | Password |
      | Internet | admin    | admin    |

  Scenario Outline: Check the functionality of Dropdown
    Given user navigates to <Page Type> page
    When user clicks hyperlink Dropdown
    And user selects option Option 1 in  Dropdown
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

  Scenario Outline: Check the functionality of elements
    Given user navigates to <Page Type> page
    When user clicks hyperlink Dynamic Loading
    And user clicks element Element1
    And user navigates to Next page
    Examples:
      | Page Type |
      | Internet |


  Scenario Outline: Check user can view images
    Given user navigates to <Page Type> page
    When user clicks hyperlink Broken Images
    Then user can view all images
    Examples:
      | Page Type |
      | Internet |


    Scenario Outline: Check user can Retrieve Password
      Given user navigates to <Page Type> page
      When user clicks hyperlink Forgot Password
      And user enters value <E-mail> in the e-mail input field
      Then user clicks on Retrieve button
      Examples:
        | Page Type | E-mail |
        | Internet  | Muskan   |

     Scenario Outline: Check user can download files
       Given user navigates to <Page Type> page
       When user clicks hyperlink File Download
       Then user clicks hyperlink details.txt
       Examples:
         | Page Type |
         | Internet  |


      Scenario Outline: Check user can Display add
        Given user navigates to <Page Type> page
        When user clicks hyperlink Entry Ad
        And user can view ad
        And user clicks element close
        Then user clicks hyperlink click here
        Examples:
          | Page Type |
          | Internet  |

      Scenario Outline: Check user can find location
        Given user navigates to <Page Type> page
        When user clicks hyperlink Geolocation
        Then user clicks on Where button
        Examples:
         | Page Type |
         | Internet  |