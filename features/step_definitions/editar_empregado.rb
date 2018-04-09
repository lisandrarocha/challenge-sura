require 'date'

Then("Edito as informacoes necessarias") do
    @browser.text_field(id:"personal_txtOtherID").set "1010"
    @browser.text_field(id:"personal_txtOtherID").set "1234567"
  end
  