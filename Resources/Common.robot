*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Begin Web Test
    open browser  ${URL}  ${BROWSER}
    maximize browser window

End Web Test
    close browser