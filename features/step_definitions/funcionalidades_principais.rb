Given /^Estiver na pagina (.+)$/ do |page_name|
    @browser.goto "http://opensource.demo.orangehrmlive.com/"
end

# Text Field
Given(/^Eu preenchi o campo "(.*?)" com o valor "(.*?)"$/) do |ele, text|
 case
  when @browser.text_field(:id, ele).exists?
       @browser.text_field(:id, ele).set text

  when @browser.text_field(:placeholder, ele).exists?
       @browser.text_field(:placeholder, ele).set text

  when @browser.text_field(:class, ele).exists?
       @browser.text_field(:class, ele).set text

  when @browser.text_field(:name, ele).exists?
       @browser.text_field(:name, ele).set text

  else
    fail("O campo => #{ele} NAO EXISTE")
  end
end

# Button
Given(/^Clico no botao "(.*?)"$/) do |ele|
  case
  when @browser.button(:id, ele).exists?
       @browser.button(:id, ele).click

  when @browser.button(:text, ele).exists?
       @browser.button(:text, ele).click

  when @browser.button(:class, ele).exists?
       @browser.button(:class, ele).click

  when @browser.button(:name, ele).exists?
       @browser.button(:name, ele).click

  when @browser.button(:value, ele).exists?
       @browser.button(:value, ele).click

  else
    fail("Botao => #{ele} NAO EXISTE")
  end
end

#Link
Given(/^Clico no link "(.*?)"$/) do |ele|
  case
  when @browser.link(:id, ele).exists?
       @browser.link(:id, ele).click

  when @browser.link(:text, ele).exists?
       @browser.link(:text, ele).click

  when @browser.link(:class, ele).exists?
       @browser.link(:class, ele).click

  when @browser.link(:href, ele).exists?
       @browser.link(:href, ele).click

  else
    fail("Link => #{ele} NAO EXISTE")
  end
end