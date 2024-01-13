*** Settings ***
Resource        ../base/base.robot
Variables        book-locator.yaml

*** Keywords ***
Click Booking Button
    Click Element    ${book-button}
    
Click From City button
    Click Element    ${from-city-button}

From City Select
    Click Element    ${from-city-select}

CLick To City Button
    Click Element    ${to-city-button}

To City Select
    Click Element    ${to-city-select}

Click Class Button
    Click Element    ${class-button}

Class Select
    Click Element    ${class-select}

Click Start Date Button
    Click Element    ${start-date-button}

Start Date Select
    Click Element    ${start-date-select}

Click Start Date Ok Button
    Click Element    ${start-date-ok}

Click End Date Button
    Click Element    ${end-date-button}

End Date Select
    Click Element    ${end-date-select}
    Wait Until Element Is Visible    ${end-date-ok}

End Date Ok Button
    Element Should Be Visible    ${end-date-ok}
    Click Element    ${end-date-ok}
    
Flight Radio Button
    Click Element    ${flight-button}

Book Confirm Button
    Wait Until Element Is Visible    ${book-confirm-button}
    Click Element    ${book-confirm-button}
    
Flight Price Button
    Click Element    ${flight-price-button}

Price Confirm Button
    Click Element    ${price-confirm-button}

Book Successfull Confirmation
    Page Should Contain Element    ${book-confirmation}
    
Click Book Button Without Login
    Click Element    ${book-button-no-login}

