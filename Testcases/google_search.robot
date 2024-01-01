*** Settings ***
Documentation    Search google
Library  SeleniumLibrary
Resource  practicevariable.robot

*** Variables ***
${search_text}  Selenium Library
${search_btn}   xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
${search_result}  Selenium library

*** Test Cases ***
User should be able to search through google
    Search google
    [Tags]   king


*** Keywords ***
Search google
    Open Browser   ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Enabled    xpath://*[@id="vc3jof"]/div/div
    Click Element    xpath://*[@id="vc3jof"]/div/div
    Click Element    xpath://*[@id="L2AGLb"]/div
    Wait Until Element Is Enabled    ${SEARCH_FIELD}
    Input Text    ${SEARCH_FIELD}    ${search_text}
    Click Element    ${search_btn}
    Page Should Contain   ${search_result}
    Close Browser
