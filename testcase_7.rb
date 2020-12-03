require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    driver.get'https://itmscoaching.herokuapp.com/form'
    driver.manage.window.maximize

    firstname = driver.find_element(id: 'first-name')
    firstname.send_keys 'iTMS Coaching'

    lastname = driver.find_element(id:  "last-name")
    lastname.send_keys 'Coaching'

    job = driver.find_element(id:  "job-title")
    job.send_keys 'QA'

    rad = driver.find_element(id:  "radio-button-2")
    rad.click

    cbd = driver.find_element(id:  "checkbox-1")
    cbd.click

    options = driver.find_element(id:  "select-menu")

    select_object = Selenium::WebDriver::Support::Select.new(options)
    select_object.select_by(:value, "2")

    date = driver.find_element(id:  "datepicker")
    date.send_keys '27/10/2025'
    sleep 5
    button_submit = driver.find_element(xpath: "//a[contains(text(),'Submit')]" )
    button_submit.click
    sleep 5
ensure
    driver.quit
end