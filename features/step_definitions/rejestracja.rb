# encoding: utf-8
Zakładając /^że jesteśmy na "(.*?)"$/ do |text|
  visit root_url
page.should have_content(text)
end

Zakładając /^klilkniemy w link "(.*?)"$/ do |link|
  click_link(link)
end

Wtedy /^zobaczymy komunikat "(.*?)"$/ do |text|
  page.should have_content(text)
end


Wtedy /^zobaczymy pola "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/ do |arg1, arg2, arg3, arg4, arg5, arg6|
  page.should have_content(arg1)
  page.should have_content(arg2)
  page.should have_content(arg3)
  page.should have_content(arg4)
  page.should have_content(arg5)
  page.should have_content(arg6)
end

Wtedy /^uzupełnię "([^\"]*)" tekstem "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end



Wtedy /^kliknę przycisk "(.*?)"$/ do |button|
  click_button(button)
end

