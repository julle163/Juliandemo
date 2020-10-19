*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://automationpractice.com/index.php

*** Test Cases ***
NewUser
    open browser         ${url}  ${browser}
    click link  xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Sleep  2
    input text  //*[@id="email_create"]     Joulles92@gmail.com
    click button    //*[@id="SubmitCreate"]
    Sleep   2
    click button    //*[@id="id_gender1"]
    input text      //*[@id="customer_firstname"]   Julian
    input text      //*[@id="customer_lastname"]    Youssef
    input text      //*[@id="passwd"]           kladdkaka
    Sleep   2
    click element   //*[@id="days"]
    click element   //*[@id="days"]/option[14]
    Sleep   2
    click element   //*[@id="months"]
    click element   //*[@id="months"]/option[5]
    Sleep   2
    click element   //*[@id="years"]
    click element   //*[@id="years"]/option[30]
    Sleep   2
    input text      //*[@id="address1"]     Koltrastvägen 6
    input text      //*[@id="city"]         Köping
    Sleep   2
    click element   //*[@id="id_state"]
    click element   //*[@id="id_state"]/option[11]
    sleep   2
    input text      //*[@id="postcode"]         16372
    input text      //*[@id="phone_mobile"]     087020090
    input text      //*[@id="alias"]           Joulles92@gmail.com
    Sleep   10
    close browser

*** Keywords ***