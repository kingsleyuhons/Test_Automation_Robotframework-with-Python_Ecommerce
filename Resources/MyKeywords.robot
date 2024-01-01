*** Settings ***
Documentation    Variables and Keywords for automation practice project
Library  SeleniumLibrary
Library  FakerLibrary
Resource  Variables.robot


*** Keywords ***
Check logo and add to cart elements
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${APP_LOGO}  10s
    Wait Until Element Is Visible    ${SHOPPING_CART}  10s
    Capture Page Screenshot

Login user
    [Arguments]  ${username}  ${password}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait And Click Element    ${HOMEPAGE_SIGNIN_BTN}
    Wait And Input Text    ${LOGIN_USERNAME_FIELD}    ${username}
    Wait And Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}
    Wait And Click Element    ${LOGIN_BTN}
    Page Should Contain    ${LOGGEDIN_USER}

Enter user credentials to add address
    [Arguments]  ${username}  ${password}
    Wait And Input Text    ${LOGIN_USERNAME_FIELD}    ${username}
    Wait And Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}
    Wait And Click Element    ${LOGIN_BTN}
    Page Should Contain    ${LOGGEDIN_USER}

Login with incorrect password
    [Arguments]  ${username}  ${password}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait And Click Element    ${HOMEPAGE_SIGNIN_BTN}
    Wait And Input Text    ${LOGIN_USERNAME_FIELD}   ${username}
    Wait And Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}
    Wait And Click Element    ${LOGIN_BTN}
    Page Should Not Contain    ${LOGGEDIN_USER}

Login with incorrect username
    [Arguments]  ${username}  ${password}
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait And Click Element    ${HOMEPAGE_SIGNIN_BTN}
    Wait And Input Text    ${LOGIN_USERNAME_FIELD}    ${username}
    Wait And Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}
    Wait And Click Element    ${LOGIN_BTN}
    Page Should Not Contain    ${LOGGEDIN_USER}


Retrieve user password
    [Arguments]  ${ForgotPassword_Link}  ${EmailAddress_Field}  ${EmailAddress}  ${RetrievePassword_btn}
    Wait And Click Element    ${ForgotPassword_Link}
    Wait And Input Text    ${EmailAddress_Field}    ${EmailAddress}
    Click Element    ${RetrievePassword_btn}
    Wait Until Page Contains    A confirmation email has been sent to your address: ${EmailAddress}  10s


Get to login page
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait And Click Element    ${HOMEPAGE_SIGNIN_BTN}

Wait And Click Element
    [Documentation]  wait for elements to be enabled before clicking
    [Arguments]  ${selector}  ${timeoust}=10s
    Wait Until Element Is Enabled    ${selector}
    Click Element  ${selector}

Wait And Input Text
    [Documentation]  wait for elements to be enabled before inputting text
    [Arguments]  ${selector}  ${text}  ${timeoust}=10s
    Wait Until Element Is Enabled    ${selector}
    Input Text  ${selector}  ${text}

Enter email for new user and click create button
    ${email}=  FakerLibrary.email
    log  ${email}
    Set Test Variable    ${email}
    Wait And Input Text  ${CREATE_USER_EMAIL}  ${email}
    Wait And Click Element  ${CREATE_BTN}


Enter firstname, lastname, and password
    [Arguments]  ${firstname}  ${lastname}  ${password}
    Wait And Input Text  ${USER_FIRSTNAME}  ${firstname}
    Wait And Input Text  ${USER_LASTNAME}  ${lastname}
    Wait And Input Text  ${NEW_USER_PASSWORD}  ${password}

Select user date of birth in days, months, and years
    Sleep    5
    Select From List By Index    ${DOB_DAYS}  10
    Sleep    5
    Select From List By Index    ${DOB_MONTHS}  9
    Sleep    5
    Select From List By Value    ${DOB_YEARS}  1990

Enter address, city, state, postcode, mobile, alias, and click on register
    Wait And Input Text  ${USER_ADDRESS}  Finland street
    Wait And Input Text  ${USER_CITY}   Chicago
    Select From List By Label    ${USER_STATE}  Idaho
    Wait And Input Text  ${USER_POSTCODE}  33710
    Wait And Input Text  ${USER_MOBILE}  3453453444
    Wait And Input Text  ${USER_ALIAS}  QA house
    Wait And Click Element  ${REGISTER_BTN}
    Page Should Contain    Kings  Uhons

Modify address
    Wait And Input Text  ${USER_ADDRESS}  Oboh street
    Wait And Input Text  ${USER_CITY}   Atlanta
    Select From List By Label    ${USER_STATE}  Illinois
    Wait And Input Text  ${USER_POSTCODE}  33710
    Wait And Input Text  ${USER_MOBILE}  3453453444
    Wait And Input Text  ${USER_ALIAS}  Testing house
    Wait And Click Element  ${SAVE_ADDRESS}
    Page Should Contain    Kings  Uhons

Add a new address and save
    Wait And Click Element  ${MY_ADDRESSES}
    Wait And Click Element  ${NEW_ADDRESS_BTN}
    Modify address
    Wait Until Page Contains  Testing house

Delete Address and close browser
    Wait And Click Element  ${DELETE_BTN}
    Handle Alert  Accept
    Page Should Not Contain    Testing house
    Close Browser

    


