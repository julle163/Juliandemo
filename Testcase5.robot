*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://automationpractice.com/index.php

*** Test Cases ***
AddItem
    open browser         ${url}  ${browser}
    LogInToApp
    Sleep  2
    click element   xpath://*[@id="SubmitLogin"]
    Sleep  2
    click link  //*[@id="header_logo"]/a
    sleep  2
    click element  //*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[1]
    sleep  2
    click element   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    sleep  2
    click element  //*[@id="homefeatured"]/li[2]/div/div[2]/div[2]/a[1]
    sleep  2
    click element   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    sleep  2
    click element  //*[@id="homefeatured"]/li[3]/div/div[2]/div[2]/a[1]
    sleep  2
    click element   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    sleep  2
    click element  //*[@id="homefeatured"]/li[4]/div/div[2]/div[2]/a[1]
    sleep  2
    click element   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    sleep  2
    click element  //*[@id="homefeatured"]/li[5]/div/div[2]/div[2]/a[1]
    sleep  2
    click element   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    sleep  2
    click element  //*[@id="homefeatured"]/li[6]/div/div[2]/div[2]/a[1]
    sleep  2
    click element   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    sleep  2
    click element   //*[@id="header"]/div[3]/div/div/div[3]/div/a

    sleep   10
    close browser


*** Keywords ***
LogInToApp
    click link  xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Sleep  2
    input text  //*[@id="email"]    jullelito@hotmail.com
    input text  //*[@id="passwd"]   bynblock163