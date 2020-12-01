*** Settings ***
Documentation     A resource file with reusable variables.

*** Variables ***
#************************** Common Variables  *****************************
${ONLINETRADE_STORE}  https://www.onlinetrade.ru/

#************************** Page Elements *********************************
${SEARCH_FIELD}                     xpath=//*[@class='header__search__inputText js__header__search__inputText']
${SEARCH_BUTTON}                    xpath=//*[@class='header__search__inputGogogo']
${SEARCH_HIGHLIGHT}                 xpath=//*[@class='searchHighlight'][1]
${LIST_SORTING_PRICE_DESC}          xpath=//select/option[@value='price-desc']
${ADD_TO_CART_BEGIN}                //*[@class='indexGoods__item'][
${ADD_TO_CART_END}                  ]//*[@data-handler="buy"]
${CONTINUE_SHOPPING_CLOSE_POPUP}    xpath=//a[@class='dashed js__popup__close']
${CART}                             xpath=//div[@class='header__userAndBasket']//span[@class='itemCount']