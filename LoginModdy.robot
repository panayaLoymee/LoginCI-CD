*** Settings ***
Library    Selenium2Library

*** Variables ***
#xpath
${txtLogin}       //h3[@id='divTitleLogin']
${tbUsername}     //input[@id='username']
${txtUsernamr}    //label[@for="username"]
${txtPassword}    //label[@for="password"]
${tbPassword}     //input[@id='password']
${btnLogin}       //input[@id='submit']
#wording
${Login}    Login
${Username}    Username:
${Password}    Password:
#value
${urlWeb}    https://fir-login-up.firebaseapp.com/login

*** Keywords ***
Open web Login 
    Open Browser    ${urlWeb}    gc

Verify login page
    Wait Until Page Contains Element    ${txtLogin}
    Wait Until Page Contains Element    ${txtUsernamr}
    Wait Until Page Contains Element    ${txtPassword}
    Element Text Should Be    ${txtLogin}    ${Login}
    Element Text Should Be    ${txtUsernamr}    ${Username}
    Element Text Should Be    ${txtPassword}    ${Password}

*** Test Cases ***
[F1_login_001]-Verify login page
    Open web Login 
    Verify login page
    Close Browser