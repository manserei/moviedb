require 'rails_helper'

feature "creating a movie" do
  specify do
    visit '/'
    click_on 'New Movie'

    expect(page).to have_css 'h1', text: 'New Movie'

    fill_in "Title", with: "Babe: Pig In The City"
    fill_in "Year", with: "1998"
    fill_in "Description", with: "It's really just an awesome movie."
    click_button "Create Movie"

    expect(page).to have_css 'h1', text: 'Babe: Pig In The City (1998)'
  end
end
