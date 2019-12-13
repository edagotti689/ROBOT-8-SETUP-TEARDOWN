*** Settings ***
Documentation   *  To know how to use setup and teardown options *

Suite Teardown    Log    Suite Teardown      ERROR
Suite Setup       Suite Setup section

Test Setup       Log    TEST SETUP    WARN
Test Teardown    Log    TEST TEARDOWN    WARN

*** Variables ***
${ONE}    5
${TWO}    3

*** Test Cases ***
Testcase1
    Log    First Test Case   WARN
    [Setup]    Log    Setup for first test case   WARN

Testcase2
    log    SECOND TEST CASE   ERROR
    [Teardown]    Teardown Section

*** Keywords ***
Setup Section
    Log    SETUP SECTION     WARN
 
Teardown Section
    Log    TEARDOWN SECTION     WARN

Suite Setup section
    Log    Suite Setup    ERROR
