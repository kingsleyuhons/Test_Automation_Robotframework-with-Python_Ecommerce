*** Settings ***
Documentation    Verifying New User account functionality
Library  SeleniumLibrary
Resource  ../Resources/MyKeywords.robot
Resource  ../Resources/Variables.robot
Suite Setup  Get to login page
Suite Teardown  Close All Browsers

*** Test Cases ***
Verify that user can create a new account
    #[Tags]   kings
    Enter email for new user and click create button
    Enter firstname, lastname, and password  Kings  Uhons  testing
    Select user date of birth in days, months, and years
    Enter address, city, state, postcode, mobile, alias, and click on register

Add new address to user profile
    [Tags]   kings
    Enter user credentials to add address   ${USER_EMAIL}  ${USER_PASSWORD}
    Add a new address and save
    [Teardown]  Delete Address and close browser




*** Keywords ***
