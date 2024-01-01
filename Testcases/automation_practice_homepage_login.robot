*** Settings ***
Documentation    Validate application homepage and login
Library  SeleniumLibrary
Resource  ../Resources/MyKeywords.robot
Resource  ../Resources/Variables.robot
Suite Teardown  Close All Browsers


*** Test Cases ***
Verify that logo and Add cart button are displayed
   Check logo and add to cart elements


Valid Login
    #[Tags]  kingsley
    Login user  ${USER_EMAIL}  ${USER_PASSWORD}


Invalid Login1
    Login with incorrect password  kingsg@gmail.com  test


Invalid Login2
    Login with incorrect username  king@gmail.com  testing

Valid error messages for incorrect logins
    #[Tags]  kingsley
    [Template]  Verify error messages for different invalid login scenerios
    kingsg@gmail.com   test         Invalid password.
    kings@gmail.com   testing       Invalid email address.
    ${EMPTY}          testing       An email address is required.

Verify that users can retrieve forgotten password
    [Tags]  kingsley
    [Setup]  Get to login page
    Retrieve user password  ${FORGOT_PASSWORD_LINK}  ${FORGOT_PASSWORD_EMAIL}  kingsg@gmail.com  ${RETRIEVE_PASSWORD_BTN}

*** Keywords ***
Verify error messages for different invalid login scenerios
    [Arguments]  ${username}  ${password}  ${errormessage}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Click Element    ${HOMEPAGE_SIGNIN_BTN}
    Input Text    ${LOGIN_USERNAME_FIELD}    ${username}
    Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}
    Click Element    ${LOGIN_BTN}
    Page Should Contain    ${errormessage}

    