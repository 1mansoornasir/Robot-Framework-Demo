*** Settings ***

Library     OperatingSystem
Library     SeleniumLibrary
Library     mylib.py

*** Variables***
${list}     1234
${s1}       A-
${s2}       -B


*** Test Cases ***

Passing
    testing the list  ${list}  ${s1}  ${s2}

***Keywords***

testing the list
    [Arguments]     ${mylist}   ${my_s1}    ${my_s2}
    append to the list  ${mylist}   ${my_s1}    ${my_s2}