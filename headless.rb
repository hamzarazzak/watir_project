require 'rubygems'
require 'watir-webdriver'
require 'headless'
headless = Headless.new
headless.start
b = Watir::Browser.start 'https://www.elmar.nl'
puts b.title
puts b.html
b.close
headless.destroy
