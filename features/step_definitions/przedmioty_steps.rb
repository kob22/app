# encoding: utf-8

Zakładając /^że jesteśmy zalogowani i na "(.*?)"$/ do |text|
  rejestracja_usera
logowanie_usera
  visit root_url
page.should have_content(text)
end

Zakładając /^chcemy dodać przedmiot to klikniemy link "(.*?)"$/ do |link|
  click_link(link)
end

Wtedy /^tekst "(.*?)" i "(.*?)"$/ do |arg1, arg2|
  page.should have_content(arg1)
  page.should have_content(arg2)
end

Zakładając /^że jesteśmy niezalogowani$/ do
  visit('/users/sign_out')
end

Kiedy /^wejdziemy w link przedmioty$/ do 
 visit przedmioty_path
end
