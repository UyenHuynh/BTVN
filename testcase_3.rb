require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    driver.get'http://google.com'
    driver.manage.window.maximize
    sleep 4
    puts driver.title
    sleep 4
ensure
    driver.quit
end