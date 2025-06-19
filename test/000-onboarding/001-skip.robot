*** Settings ***
Resource        ../../resource/common/general.robot
Resource        ../../resource/common/onboarding.robot

*** Test Cases ***
Skip on First Page
    Open App With Reset
    Check First Page
    Click Skip Button
    Check Greeting Page
    Terminate App

Skip on Second Page
    Open App With Reset
    Check First Page
    Click Next Button
    Check Second Page
    Click Skip Button
    Check Greeting Page
    Terminate App
