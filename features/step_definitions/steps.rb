# encoding: utf-8

Wtedy /^uzupełnię "(.*?)" tekstem "(.*?)"$/ do |field, value|
  fill_in(field, :with => value)
end

Wtedy /^zobaczymy komunikat "(.*?)"$/ do |text|
  page.should have_content(text)
end

Wtedy /^klikniemy link "(.*?)"$/ do |link|
  click_link(link)
end


Wtedy /^kliknę przycisk "(.*?)"$/ do |button|
  click_button(button)
end


Wtedy /^zobaczymy dwa pola "(.*?)", "(.*?)"$/ do |arg1, arg2|
  page.should have_content(arg1)
  page.should have_content(arg2)
end
