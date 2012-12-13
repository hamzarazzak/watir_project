 the Watir controller
require "watir"

# set a variable
test_site = "http://www.elmar.nl"

# open a browser
browser = Watir::Browser.new

# print some comments
puts "Launch elmar.nl"

puts " Step 1: go to the test site: " + test_site
browser.goto test_site

puts " Step 2: select a country from dropdown box."
# browser.select_list(:name, "")
browser.select_list(:name => 'form:locations').select 'Aruba'

puts " Step 3: select date from datepicker"
# browser.select_list(:name, 'form:locations').fire_event("onfocus")

browser.text_field(:name, "form:tripDate").fire_event("onfocus")
browser.text_field(:name => 'form:tripDate').fire_event(:readonly, 'false')

# browser.text_field(:name, "form:tripDate").set("31-01-2012")
browser.text_field(:name, "form:tripDate").set_attribute(:value, "19-01-2013")

# browser.text_field(:name, "form:tripDate").set_value("19-01-2013")
