require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
begin
    driver.get'http://google.com'
    driver.manage.window.maximize
    
    search = driver.find_element(css: '[name="q"]')
    search.send_keys 'iTMS Coaching'
    search.send_keys :enter
    puts driver.title
    sleep 3
ensure
    driver.quit
end