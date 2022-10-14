*** Settings ***
Library             Selenium2Library
Resource          ../resources/keywords.robot

*** Test Cases ***
User Opens Youtube Music Web
    Given Open Youtube Music website in chrome
    Then User will see Youtube Music landing home page

User Goes To Explore Page
    Given User on Home page
    When Click Explore button
    Then User will see Explore page

User Search Sheila on 7 as Singer
    Given User on Explore page
    When Click Search button
    And Type a Singer Sheila on 7
    Then Sheila on 7 Songs Will be Displayed

User Play the Song
    Given List of Song
    When Click Song Title
    Then The Song Will Play

User Pause the Song
    Given The Song will Play
    When Click Pause button
    Then The Song Pause

User Play again the song
    Given The Song Play again
    Then The Song Will Play

Close Browser
    Given Close The Browser