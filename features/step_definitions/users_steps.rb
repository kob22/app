# encoding: utf-8

def rejestracja_usera
visit('/users/sign_up')
  fill_in "Tytuł", :with => "mgr"
  fill_in "Imię", :with => "Testowe"
  fill_in "Nazwisko", :with => "Testowy"
  fill_in "Email", :with => "testowy@testowy.pl"
  fill_in "user_password", :with => "12345678ab"
  fill_in "user_password_confirmation", :with => "12345678ab"
  click_button "Zarejestruj się"
  click_link "Wyloguj"
  page.should_not have_content "Logged in as"
  visit root_url
end

def logowanie_usera
visit('/users/sign_in')
  fill_in "Email", :with => "testowy@testowy.pl"
  fill_in "user_password", :with => "12345678ab"
  click_button "Zaloguj się"
  page.should have_content "Witaj ponownie!"
  visit root_url
end

Zakładając /^że jesteśmy na "(.*?)"$/ do |text|
  visit root_url
page.should have_content(text)
end

Zakładając /^chcemy się zarejestrować to klilkniemy w link "(.*?)"$/ do |link|
  click_link(link)
end

Zakładając /^że rejestrujemy się z blędnym emailem$/ do
  rejestracja_usera
end



Wtedy /^zobaczymy pola "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/ do |arg1, arg2, arg3, arg4, arg5, arg6|
  page.should have_content(arg1)
  page.should have_content(arg2)
  page.should have_content(arg3)
  page.should have_content(arg4)
  page.should have_content(arg5)
  page.should have_content(arg6)
end


Zakładając /^że jesteśmy zalogowani$/ do
  rejestracja_usera

logowanie_usera
end

Zakładając /^wrócimy na "(.*?)"$/ do |text|
  visit root_url
page.should have_content(text)
end

Wtedy /^powinienem być wylogowany$/ do
  page.should have_content("Zarejestruj się")
  page.should have_content("Zaloguj się")
end

Zakładając /^chcemy się zalogować to klikniemy link "(.*?)"$/ do |link|
  rejestracja_usera
  click_link(link)
end


