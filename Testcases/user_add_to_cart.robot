*** Settings ***
Documentation    Add to Cart Functionality

Library     SeleniumLibrary
Resource  ../Resources/Variables.robot
Resource   ../Resources/MyKeywords.robot
Suite Setup  Get to login page
Suite Teardown   Close All Browsers

*** Test Cases ***
User should be able to login
    Login user   kingsleyuhons@gmail.com  CathP7
User should be able to add item to cart successfully
    Add to Cart
