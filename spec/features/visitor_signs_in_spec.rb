require 'spec_helper'

feature 'Visitor signs in' do
  scenario 'successfully' do
    user = create(:user)

    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    expect(page).to have_content "Signed in as #{user.email}"
    expect(page).to have_link 'Sign out'
  end
end
