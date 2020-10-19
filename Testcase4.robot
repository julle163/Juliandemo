*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://automationpractice.com/index.php

*** Test Cases ***
Logout
    open browser         ${url}  ${browser}
    LogInToApp
    Sleep  2
    click button   //*[@id="SubmitLogin"]
    Sleep  5
    click link  xpath://*[@id="header"]/div[2]/div/div/nav/div[2]/a
    sleep   5
    close browser

*** Keywords ***
LogInToApp
    click link  xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Sleep  2
    input text  //*[@id="email"]    jullelito@hotmail.com
    input text  //*[@id="passwd"]   ***********
