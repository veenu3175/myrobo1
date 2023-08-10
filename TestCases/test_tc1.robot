*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm#

*** Keywords ***



          #Execute javascript  document.body.style.zoom="70%"
*** Test Cases ***
LoginTest
     [Tags]    sanity
     [Documentation]    this is all abt opening browser
     open browser       ${url}      ${browser}
     maximize browser window
     title should be    Selenium - Automation Practice Form | Tutorialspoint
     ${page_title}      get title
     log     ${page_title}
     input text    name:firstname      veenu
     get text      name:firstname
     select radio button    sex      Female
     select radio button    exp      6
     sleep     5
     execute javascript    scrollTo(0,500)
     sleep    4
     scroll element into view     xpath://*[@id="mainContent"]/div[4]/div/form/table/tbody/tr[6]/td[2]/span[1]/input
     #page should contain checkbox      xpath://*[@id="mainContent"]/div[4]/div/form/table/tbody/tr[6]/td[2]/span[1]/input
     select checkbox      xpath://*[@id="mainContent"]/div[4]/div/form/table/tbody/tr[6]/td[2]/span[1]/input
     sleep     5
    select from list by index    continents     2
    sleep      5
     select from list by index    selenium_commands     0
     select from list by index    selenium_commands      2
     select from list by index    selenium_commands      3
     sleep      5