require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    driver.get'http://google.com'
    driver.manage.window.maximize
    sleep 4
    puts driver.current_url
   
    sleep 4
ensure
    driver.quit
end