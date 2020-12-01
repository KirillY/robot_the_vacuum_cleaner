*** Settings ***
Documentation     A resource file with reusable keywords and variables.

*** Variables ***
${DELAY}                            1

*** Keywords ***
Open Firefox To Onlinetrade Page
    Open Browser To Page  ${ONLINETRADE_STORE}  Firefox

Open Browser To Page
    [Arguments]   ${url}  ${browser}    
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Store page should be open 
    
Search In Catalog
    [Arguments]  ${search_text}
    Input text  ${SEARCH_FIELD}  ${search_text}
    Wait And Click  ${SEARCH_BUTTON}
    Wait And Click  ${SEARCH_HIGHLIGHT}
    Wait And Click  ${LIST_SORTING_PRICE_DESC}

Wait And Click
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}
    Click Element  ${element}

Add Item To Cart
    [Arguments]  ${item_index}
    Wait And Click  ${ADD_TO_CART_BEGIN}${item_index}${ADD_TO_CART_END}

Continue Shopping
    Wait And Click  ${CONTINUE_SHOPPING_CLOSE_POPUP}

Store page should be open
    Title Should Be  Интернет-магазин ОНЛАЙН ТРЕЙД.РУ. Покупай всё онлайн!

Check Items in Cart
    [Arguments]  ${items_count}
    Element Should Contain    ${CART}    ${items_count}

