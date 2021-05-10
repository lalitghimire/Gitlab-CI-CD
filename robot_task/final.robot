*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

*** Test Cases ***
Get data from webpage
    Comment    Robot framework task of DevOps course  
    Open Browser  https://dwbl.dclabra.fi/api/v1/dht1   chrome  # open the webpage in chrome
    ${dht_data}=    Get text   xpath:/html/body/pre             #locate and put content of element to variable 
    Log to console   ${dht_data}                                # print variable in console
    ${sensor_data}=    Evaluate  json.loads('''${dht_data}''')  json  # convert json object to python dictionary
    Log to console   Temperature reading: ${sensor_data["temperature"]} Humidity reading: ${sensor_data["humidity"]}