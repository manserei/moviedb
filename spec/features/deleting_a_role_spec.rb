require 'rails_helper'

feature "deleting a role", js: true do
  # Using `let!` (with an exclamation mark) makes sure the variable
  # is created eagerly. (Without the exclamation mark, it would only be
  # created lazil, the first time it was used.)
  #
  let!(:movie) { create(:movie, title: "Star Wars", year: 1977) }
  let!(:actor) { create(:actor, first_name: "Harrison", last_name: "Ford") }
  let!(:role)  { create(:role, movie: movie, actor: actor, name: "Han Solo") }

  # It is often useful to set up helper methods that return specific
  # elements of the page.
  #
  def role_element_selector
    "li#role_#{role.id}"
  end

  def role_element
    page.find(role_element_selector)
  end

  specify do
    visit '/movies'
    click_on 'Star Wars (1977)'

    # Check that the role is actually being listed
    expect(role_element).to have_text("Harrison Ford (as Han Solo)")

    # Click on the delete link. Note that we're using the CSS notation here,
    # since the link text is just an icon. Using CSS notation is also useful
    # when your app has internationalized texts that may confuse your tests.
    within role_element do
      find('a[data-method="delete"]').click
    end

    # Make sure that the element is now gone.
    expect(page).to_not have_css(role_element_selector)
  end
end
