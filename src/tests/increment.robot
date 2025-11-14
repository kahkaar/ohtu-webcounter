*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Input Text  name=new_value  0
    Click Button  Aseta
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

When button pressed twice the counter is two
    Go To  ${HOME_URL}
    Input Text  name=new_value  10
    Click Button  Aseta
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa

When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Input Text  name=new_value  10
    Click Button  Aseta
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa

When setting counter to a specific value the counter shows that value
    Go To  ${HOME_URL}
    Input Text  name=new_value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa
