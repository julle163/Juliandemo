*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://automationpractice.com/index.php

*** Test Cases ***
LoginTest
    open browser         ${url}  ${browser}
    LogInToApp
    sleep  2
    click element   xpath://*[@id="SubmitLogin"]
    Sleep  2
    close browser

*** Keywords ***
LogInToApp
    click link  xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Sleep  2
    input text  //*[@id="email"]    jullelito@hotmail.com
    input text  //*[@id="passwd"]   ***********
