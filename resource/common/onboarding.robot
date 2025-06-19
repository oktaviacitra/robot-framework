*** Settings ***
Library            AppiumLibrary 
Library            String
Library            Collections
Resource           ../locator/onboarding.robot
Resource           ../../data/strings/onboarding.robot

*** Keywords ***
Check First Page
    Check Texts                           ${TITLE-1}                ${SUBTITLE-1}
    Check Button                          ${NEXT-BUTTON}
    Check Button                          ${SKIP-BUTTON}
    Sleep                                 2s

Check Second Page
    Check Texts                           ${TITLE-2}                ${SUBTITLE-2}
    Check Button                          ${NEXT-BUTTON}
    Check Button                          ${SKIP-BUTTON}
    Sleep                                 2s

Check Third Page
    Check Texts                           ${TITLE-3}                ${SUBTITLE-3}
    Check Button                          ${NEXT-BUTTON}
    Sleep                                 2s

Check Greeting Page
    Check Texts                           ${GREETING-TITLE}         ${GREETING-SUBTITLE}
    Check Button                          ${LOGIN-BUTTON}
    Check Button                          ${REGISTER-BUTTON}
    Sleep                                 2s 

Check Texts
    [Arguments]                           ${TEXT-1}                 ${TEXT-2}
    Wait Until Element Is Visible         ${TEXT-1}                 timeout=20s
    Text Should Be Visible                ${TEXT-2}

Check Button
    [Arguments]                           ${BUTTON-1}
    Element Should Be Visible             ${BUTTON-1}
    Element Should Be Enabled             ${BUTTON-1}

Click Next Button
    Click Element                        ${NEXT-BUTTON}

Click Skip Button
    Click Element                        ${SKIP-BUTTON}