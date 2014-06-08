# encoding: UTF-8
# language: zh_CN

假如(/^我已经打开了首页$/) do
  visit "https://duckduckgo.com/"
end

当(/^我搜索"(.*?)"$/) do | key_word |
  fill_in "search_form_input_homepage", :with => key_word
  find("#search_button_homepage").click
end

那么(/^我应该看到"(.*?)"$/) do | text |
  page.should have_content(text)
end
