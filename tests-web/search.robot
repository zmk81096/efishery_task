*** Settings ***
Library    Selenium2Library
Resource          ../resources/keywords.robot

*** Test Cases ***
Open Youtube Music
    Given Open Youtube Music website in chrome
    Then User will see Youtube Music landing home page

Go To Explore Page
    Given User on Home page
    When Click Explore button
    Then User will see Explore page

Search a Singer
    Given User on Explore page
    When Click Search button
    And Type a Singer Sheila on 7
    Then Sheila on 7 Songs Will be Displayed

Play the Song
    Given List of Song
    When Click Song Title
    Then The Song Will Play

Close Browser
    Given Close The Browser