*** Settings ***
Resource        ../../resource/common/general.robot
Resource        ../../resource/common/onboarding.robot

*** Test Cases ***
Pass All Page
    Open App With Reset
    Check First Page
    Click Next Button
    Check Second Page
    Click Next Button
    Check Third Page
    