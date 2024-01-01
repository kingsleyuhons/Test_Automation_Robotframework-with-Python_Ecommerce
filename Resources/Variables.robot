*** Settings ***
Documentation    Variables for automation practice project

*** Variables ***
${URL}  http://automationpractice.pl/index.php
${BROWSER}  chrome
${APP_LOGO}  id:header_logo
${SHOPPING_CART}  class:shopping_cart
${HOMEPAGE_SIGNIN_BTN}  class:login
${LOGIN_USERNAME_FIELD}  id:email
${LOGIN_PASSWORD_FIELD}  name:passwd
${LOGIN_BTN}  id:SubmitLogin
${LOGGEDIN_USER}  Kingsley Uhonmhoibhi
${USER_EMAIL}   ${EMPTY}
${USER_PASSWORD}  ${EMPTY}
${FORGOT_PASSWORD_LINK}  xpath://*[@id="login_form"]/div/p[1]/a
${FORGOT_PASSWORD_EMAIL}  id:email
${RETRIEVE_PASSWORD_BTN}  xpath://*[@id="form_forgotpassword"]/fieldset/p/button/span
${CREATE_USER_EMAIL}   id:email_create
${CREATE_BTN}  id:SubmitCreate
${USER_GENDER}  id:id_gender2
${USER_FIRSTNAME}  id:customer_firstname
${USER_LASTNAME}  id:customer_lastname
${NEW_USER_PASSWORD}  id:passwd
${DOB_DAYS}    name:days
${DOB_MONTHS}  name:months
${DOB_YEARS}  name:years
${USER_ADDRESS}  id:address1
${USER_CITY}   id:city
${USER_STATE}   name:id_state
${USER_POSTCODE}   id:postcode
${USER_MOBILE}  id:phone_mobile
${USER_ALIAS}  id:alias
${REGISTER_BTN}   xpath://span[text() = 'Register']
${MY_ADDRESSES}   xpath://span[text() = 'My addresses']
${NEW_ADDRESS_BTN}   xpath://span[text() = 'Add a new address']
${SAVE_ADDRESS}    id:submitAddress
${DELETE_BTN}   xpath://*[@id="center_column"]/div[1]/div/div[2]/ul/li[9]/a[2]/span