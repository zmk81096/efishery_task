*** Variables ***
${browser}                      chrome
${url}                          https://music.youtube.com/
${home_btn}                     //*[@tab-id='FEmusic_home']
${explore_btn}                  //*[@tab-id='FEmusic_explore']
${library_btn}                  //*[@tab-id='FEmusic_liked']
${search_btn}                   //*[contains(@class, 'ytmusic-search-box') and text() = 'Search']
${charts_menu}                  //*[contains(@class, 'ytmusic-navigation-button-renderer') and text() = 'Charts']
${search_inputText}             //*[@class='style-scope ytmusic-search-box' and @id='input']
${result_search}                css:a[aria-label="Sheila on 7"]
${list_of_song}                 //*[@class='style-scope ytmusic-shelf-renderer' and text()='Songs']
${song_title}                   //a[.='Dan...']
${play_pause_button}            //tp-yt-paper-icon-button[@id='play-pause-button']