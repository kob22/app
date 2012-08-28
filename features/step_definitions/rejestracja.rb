# encoding: utf-8
Zakładając /^że jesteśmy na "(.*?)"$/ do |text|
  visit root_url
page.should have_content(text)
end

Zakładając /^klilkniemy w link "(.*?)"$/ do |link|
  click_link(link)
end

Wtedy /^zobaczymy tekst "(.*?)"$/ do |text|
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

Wtedy /^uzupełnię "(.*?)" tekstem <tytuł>$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Wtedy /^uzupełnię "(.*?)" tekstem <imię>$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Wtedy /^uzupełnię "(.*?)" tekstem <nazwisko>$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Wtedy /^uzupełnię "(.*?)" tekstem <email>$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Wtedy /^uzupełnię "(.*?)" tekstem <hasło>$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Wtedy /^kliknę przycisk "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Wtedy /^zobaczę tekst "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

