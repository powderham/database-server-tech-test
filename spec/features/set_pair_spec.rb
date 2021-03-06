require "spec_helper"

RSpec.feature "set pair", type: :feature do
  scenario "should be able to submit a key/value pair" do
    @key = "testKey"
    @value = "testValue"
    visit "/set?#{@key}=#{@value}"
    expect(page).to have_content(@key)
    expect(page).to have_content(@value)
  end

end
