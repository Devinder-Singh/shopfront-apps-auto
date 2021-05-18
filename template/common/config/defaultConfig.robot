*** Settings ***

Resource          ../../${PLATFORM_NAME}/config/testConfig.robot

Resource          ../kw/kwStartApp.robot
Resource          ../kw/kwCommon.robot

Library           TalLibrary
Library           String

*** Variables ***
${PLATFORM_NAME}    ios
${PATH}           /users/jenkins/desktop/shopfront-apps-auto/apps_auto
