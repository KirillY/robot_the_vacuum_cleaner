*** Settings ***
Documentation     Go to your favorite e-shop, navigate to some category and add two
...               most expensive items to the shopping cart from this category.

Suite Setup       Open Firefox To Onlinetrade Page
Library           SeleniumLibrary
Resource          ../resources/resource.robot
Resource          ../resources/variables.robot
Suite Teardown    Close Browser
Default Tags      owner-kirill


*** Test Cases ***

Valid Add Item To Cart
    [Tags]   owner-mrx    valid  smoke
    Search In Catalog  робот пылесос
    Add Item To Cart  1
    Continue Shopping
    Add Item To Cart  2
    Continue Shopping
    Check Items in Cart  2

