** Settings ***
Library             SeleniumLibrary      timeout=30
Suite Teardown      Close all browsers
Test Teardown       Close all browsers
Resource            ../resources/keywords.robot

***Variables***


***Test Cases***

Scenario: I can select the required value
    [Tags]      demo tasks
    Given a demo component page
     When I type the godfather in the combo box
      and Select the value "The Godfather: PartII"
     Then The value should be successfully selected
     When I click on the clear button
     Then The input should be cleared


*** Keywords ***

#When-------------------------------------------------------------------------

I type the godfather in the combo box
    Select Frame                                ${Combo_iFrame}
    Wait Until Page Contains                    CodeSandbox
    Wait Until Element Is Visible               ${Combo_Box}
    
Select the value "The Godfather: PartII"
    Wait Until Element Is Enabled               ${Combo_Box}
    Input Text                                  ${Combo_Box}                    The Godfather: Part II 
    Wait Until Page Contains Element            ${Combo_Box_Option}      
    Click Element                               ${Combo_Box_Option}

I click on the clear button
    Wait until Element Is Visible               ${Clear_Button}
    Wait Until Element Is Enabled               ${Clear_Button} 
    Click Element                               ${Clear_Button}

#Then--------------------------------------------------------------------------

The value should be successfully selected

    Textfield Should Contain      ${Combo_Box}  The Godfather

The input should be cleared

    Textfield Should Contain      ${Combo_Box}   ${EMPTY}