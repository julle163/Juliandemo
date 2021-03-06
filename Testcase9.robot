*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://automationpractice.com/index.php

*** Test Cases ***
Confirm
    open browser         ${url}  ${browser}
    LogInToApp
    click element   xpath://*[@id="SubmitLogin"]
    Payment
    click element   //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
    sleep   3
    click element   //*[@id="cart_navigation"]/button/span/i
    sleep   10
    close browser



*** Keywords ***
LogInToApp
    click link  xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Sleep  2
    input text  //*[@id="email"]    jullelito@hotmail.com
    input text  //*[@id="passwd"]   ***********
Payment
     Sleep   2
    click element   //*[@id="header_logo"]/a/img
    sleep   2
    click element  //*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[1]
    sleep   2
    click element   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    sleep   2
    click element    //*[@id="homefeatured"]/li[2]/div/div[2]/div[2]/a[1]
    sleep   2
    click element   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    sleep   2
    click element   //*[@id="header"]/div[3]/div/div/div[3]/div/a
    sleep   2
    click element   //*[@id="center_column"]/p[2]/a[1]/span/i
    sleep   2
    click element   //*[@id="center_column"]/form/p/button/span/i
    sleep   2
    click element   //*[@id="form"]/p/button/span/i
    sleep   2
    click element   //*[@id="order"]/div[2]/div/div/a
    sleep   2
    click element   //*[@id="uniform-cgv"]/span
    sleep   2
    click element   //*[@id="form"]/p/button/span/i
    sleep   2
