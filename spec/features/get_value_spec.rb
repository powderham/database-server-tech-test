require "spec_helper"

RSpec.feature "get value", type: :feature do
  scenario "should get the value" do
    @key = "testKey"
    @value = "testValue"
    visit "/set?#{@key}=#{@value}"
    visit "/get?key=#{@key}"
    expect(page).to have_content(@value)
  end
end
