require 'selenium-webdriver'
require 'nokogiri'
require 'open-uri'
driver = Selenium::WebDriver.for :chrome
begin
  # Navigate to URL
  driver.get 'https://google.com'
  driver.manage.window.maximize
  sleep 4
doc = Nokogiri::HTML(open("https://google.com").read)
puts doc.to_html
ensure
  driver.quit
end 