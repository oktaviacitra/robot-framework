*** Settings ***
Resource        ../../resource/common/general.robot
Resource        ../../resource/common/onboarding.robot

*** Test Cases ***
Terminate on First Page
    Open App With Reset
    Check First Page
    Terminate App

Terminate on Second Page
    Open App Without Reset
    Check First Page
    Click Next Button
    Check Second Page
    Terminate App

Terminate on Third Page
    Open App Without Reset
    Check First Page
    Click Next Button
    Check Second Page
    Click Next Button
    Check Third Page
    Terminate App

Terminate on Greeting Page
    Open App Without Reset
    Check First Page
    Click Next Button
    Check Second Page
    Click Next Button
    Check Third Page
    Click Next Button
    Check Greeting Page
    Terminate App
    Open App Without Reset
    Check Greeting Page