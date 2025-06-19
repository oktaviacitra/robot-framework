*** Settings ***
Resource        ../../resource/common/general.robot
Resource        ../../resource/common/login.robot
Resource        ../../resource/common/onboarding.robot
Resource        ../../data/values/login.robot

*** Test Cases ***
Input Wrong Email and Wrong Password
    Open App Without Reset
    Check Greeting Page
    Input E-mail Value            ${WRONG-EMAIL}
    Input Password Value          ${WRONG-PASSWORD}
    Click Login Button
    Check Failed Login Notification

Input Valid Email and Wrong Password
    Open App Without Reset
    Check Greeting Page
    Input E-mail Value            ${VALID-EMAIL}
    Input Password Value          ${WRONG-PASSWORD}
    Click Login Button
    Check Failed Login Notification

Input Wrong Email and Valid Password
    Open App Without Reset
    Check Greeting Page
    Input E-mail Value            ${WRONG-EMAIL}
    Input Password Value          ${VALID-PASSWORD}
    Click Login Button
    Check Failed Login Notification
