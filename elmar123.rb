require 'watir-webdriver'

browser = Watir::Browser.start  "http://www.elmar.nl"
browser.select_list(:id, "form:locations").select("Aruba")
browser.link(:text, "31").click
browser.link(:id, "form:searchButton").click
browser.link(:text, "Homepage").click

