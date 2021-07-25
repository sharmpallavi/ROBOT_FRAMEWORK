*** Settings ***
Library    RequestsLibrary

*** Variables ***
#${Base_url}  http://thetestingworldapi.com
${Base_url}  https://global.tfs.landisgyr.net/tfs/DefaultCollection/Picasso

*** Test Cases ***
Fetchingstudentsdetail
    Create Session  get_test_cases  ${Base_url}
    ${response}=  get request  get_test_cases  _apis/test/Plans/938541/suites/939473/testcases
    log to console   ${response}
    log to console   ${response.content}