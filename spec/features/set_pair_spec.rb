require "spec_helper"

RSpec.feature "set pair", type: :feature do
  scenario "should be able to get a response from the page" do
    visit "/set"
    expect(page).to have_text("Enter key/value pair")
  end

  scenario do
    
  end
end
