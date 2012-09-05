# encoding: utf-8
Zakładając /^mamy dodany "(.*?)" i "(.*?)"$/ do |rok, przedmiot|
  visit("przedmioty/new")
  fill_in("Rok", :with => rok)
  fill_in("Przedmiot", :with => przedmiot)
  click_button("Utwórz Przedmiot")
  page.should have_content("Przedmiot został dodany")
  visit root_url
end

Zakładając /^chcemy dodać grupę to klikniemy link "(.*?)"$/ do |link|
  click_link(link)
end

Wtedy /^tekst "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/ do |arg1, arg2, arg3, arg4, arg5|
  page.should have_content(arg1)
  page.should have_content(arg2)
  page.should have_content(arg3)
  page.should have_content(arg4)
  page.should have_content(arg5)
end

Kiedy /^wybiorę godzinę "([^\"]*)" z "([^\"]*)"$/ do |time, time_label|
  select_time(time, :from => time_label)
end

