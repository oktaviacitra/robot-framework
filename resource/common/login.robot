*** Settings ***
Library            AppiumLibrary 
Library            String
Library            Collections
Resource           ../locator/login.robot
Resource           ../../data/strings/login.robot
Resource           ../../data/values/login.robot

*** Keywords ***
Check Login Page
    Wait Until Element Is Visible            ${TITLE}                 timeout=20s
    Text Should Be Visible                   ${SUBTITLE}
    Element Should Be Visible                ${LOGIN-BUTTON}
    Element Should Be Disabled               ${LOGIN-BUTTON}
    Sleep                                    2s

Input E-mail Value
    [Arguments]                              ${EMAIL-VALUE}
    Element Should Be Visible                ${EMAIL-FIELD}
    Element Should Be Enabled                ${EMAIL-FIELD}
    Click Element                            ${EMAIL-FIELD}
    Input Text                               ${EMAIL-FIELD}           ${EMAIL-VALUE}
    Sleep                                    2s

Input Password Value
    [Arguments]                              ${PASSWORD-VALUE}
    Element Should Be Visible                ${PASSWORD-FIELD}
    Element Should Be Enabled                ${PASSWORD-FIELD}
    Click Element                            ${PASSWORD-FIELD}
    Input Text                               ${PASSWORD-FIELD}        ${PASSWORD-VALUE}
    Sleep                                    2s

Click Login Button
    Element Should Be Enabled                ${LOGIN-BUTTON}
    Click Element                            ${LOGIN-BUTTON}
    Sleep                                    2s

Check Failed Login Notification
    Check Login Page
    Text Should Be Visible                   ${NOTIFICATION}
    Sleep                                    2s

