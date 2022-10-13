*** Settings ***
Resource          ../resources/elements.robot

*** Keywords ***
Open Youtube Music website in chrome
    Open Browser                       ${url}                  ${browser}
    Maximize Browser Window

User will see Youtube Music landing home page
    Verify Home button
    Verify Explore button
    Verify Library button
    Verify Search button

User on Home page
    Verify Home button

User on Explore page
    Wait Until Page Contains Element            ${charts_menu}

Verify Home button
    Wait Until Page Contains Element            ${home_btn}
    Page Should Contain Element                 ${home_btn} 

User will see Explore page
    Wait Until Page Contains Element            ${charts_menu}

Verify Explore button
    Wait Until Page Contains Element            ${explore_btn}

Verify Library button
    Wait Until Page Contains Element            ${library_btn}

Verify Search button
    Wait Until Page Contains Element            ${search_btn}

Click Explore button
    Click Element                               ${explore_btn}
    Sleep                                       2 second

Click Search button
    Click Element                               ${search_btn}
    Sleep                                       2 second

Type a Singer Sheila on 7
    Input Text                                  ${search_inputText}             Sheila on 7
    Press Keys                                  ${search_inputText}             ENTER    

Sheila on 7 Songs Will be Displayed
    Wait Until Page Contains Element            ${result_search}

List of Song
    Wait Until Page Contains Element            ${list_of_song}

Click Song Title
    Set Focus To Element                        ${song_title}
    Click Element                               ${song_title}

The Song Will Play
    Wait Until Page Contains Element            ${play_pause_button}

Close The Browser
    sleep                                       7 second
    Close Browser