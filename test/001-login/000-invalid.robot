*** Settings ***
Resource        ../../resource/common/general.robot
Resource        ../../resource/common/login.robot
Resource        ../../resource/common/onboarding.robot
Resource        ../../data/values/login.robot

*** Test Cases ***
Input Invalid Email and Invalid Password
    Open App Without Reset
    Check Greeting Page
    Input E-mail Value            ${INVALID-EMAIL}
    Input Password Value          ${INVALID-PASSWORD}
    Click Login Button
    Check Failed Login Notification

Input Valid Email and Invalid Password
    Open App Without Reset
    Check Greeting Page
    Input E-mail Value            ${VALID-EMAIL}
    Input Password Value          ${INVALID-PASSWORD}
    Click Login Button
    Check Failed Login Notification

Input Invalid Email and Valid Password
    Open App Without Reset
    Check Greeting Page
    Input E-mail Value            ${INVALID-EMAIL}
    Input Password Value          ${VALID-PASSWORD}
    Click Login Button
    Check Failed Login Notification
