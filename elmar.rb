# require "headless"
require "rubygems"
require "watir"
require "watir-webdriver"

# headless = Headless.new
# headless.start


# puts b.title
# b.close
# headless.destroy




# set a variable
test_site = "http://www.elmar.nl"

# open a browser
browser = Watir::Browser.new

# print some comments
puts "Launch elmar.nl"

puts " Step 1: go to the test site: " + test_site
puts browser.title
browser.goto test_site

puts " Step 2: select a country from dropdown box."
# browser.select_list(:name, "")
browser.select_list(:name => 'form:locations').select 'Aruba'

puts " Step 3: select date from datepicker"
# browser.select_list(:name, 'form:locations').fire_event("onfocus")

browser.text_field(:name, "form:tripDate").fire_event("onfocus")
# browser.text_field(:name => 'form:tripDate').fire_event(:readonly, 'false')
browser.link(:text, "Volgende").click
browser.link(:text, "Volgende").click
browser.link(:text, "Volgende").click
browser.link(:text, "Volgende").click
browser.link(:text, "Volgende").click
browser.link(:text, "9").click


browser.close
headless.destroy


#browser.link(:text, "Volgende").click
#browser.link(:text, "26").click




#browser.text_field(:name, "form:tripDate").set("31-01-2012")
# browser.clink(:name, "31")
# browser.text_field(:name, "form:tripDate").set_value("19-01-2013")
