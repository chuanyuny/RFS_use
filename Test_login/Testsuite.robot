*** Settings ***
Library           Selenium2Library
Library           BuiltIn

*** Test Cases ***
login_success
    Open Browser    http://127.0.0.1:8000/index/    chrome
    Input Text    name=username    admin
    Input Text    name=password    123456
    Click Button    id=btn
    Close Browser

username_error
    Open Browser    http://127.0.0.1:8000/index/    chrome
    Input Text    name=username    aa
    Input Text    name=password    123456
    Click Button    id=btn
    Element should Contain    id=p1    username or password error!
    Close Browser

password_error
    Open Browser    http://127.0.0.1:8000/index/    chrome
    Input Text    id=username    admin
    Input Text    id=password    aa
    Element Should Contain    id=p1    username or password error!
    Close Browser
