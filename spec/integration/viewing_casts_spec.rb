require 'spec_helper'

feature 'Viewing Casts' do
  scenario "view a cast" do
    visit '/'
    fill_in 'title', with: "Big"
    click_button "View Cast"
    page.should have_content("Tom Hanks")
  end
end
