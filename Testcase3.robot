*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://automationpractice.com/index.php

*** Test Cases ***
ResetPassword
    open browser         ${url}  ${browser}
    click link      xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Sleep   2
    click link      //*[@id="login_form"]/div/p[1]/a
    Sleep   2
    input text      //*[@id="email"]    Jullelito@hotmail.com
    Sleep   2
    click button    //*[@id="form_forgotpassword"]/fieldset/p/button
    sleep   10
    close browser
*** Keywords ***
