*** Settings ***
Library            AppiumLibrary 
Library            Process
Resource           ../../data/values/general.robot

*** Keywords ***
Open App With Reset
    Open Application    ${URL}   
    ...    platformName=${PLATFORM}   
    ...    platformVersion=${VERSION}    
    ...    deviceName=${DEVICE}    
    ...    automationName=${AUTOMATION}    
    ...    avd=${VIRTUAL}    
    ...    app=${APP}    
    ...    udid=${UDID}    
    ...    appPackage=${PACKAGE}    
    ...    autoGrantPermissions=true
    ...    noReset=false
    ...    fullReset=true
    Sleep    10s

Open App Without Reset
    Open Application    ${URL}   
    ...    platformName=${PLATFORM}   
    ...    platformVersion=${VERSION}    
    ...    deviceName=${DEVICE}    
    ...    automationName=${AUTOMATION}    
    ...    avd=${VIRTUAL}    
    ...    app=${APP}    
    ...    udid=${UDID}    
    ...    appPackage=${PACKAGE}    
    ...    autoGrantPermissions=true
    ...    noReset=true
    ...    fullReset=false
    ...    dontStopAppOnReset=true
    ...    skipDeviceInitialization=true
    Sleep    10s

Close App
    Sleep    2s
    Close Application

Terminate App
    Sleep    2s
    Terminate Application     ${PACKAGE}