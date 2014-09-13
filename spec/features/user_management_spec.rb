require 'spec_helper'

# require './lib/user'

feature "User signs up" do

  scenario "when being logged out" do
    expect{ sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Welcome, Chris Oatley")
    expect(User.first.name).to eq("Chris Oatley")
  end

  scenario "with a password that doesn't match" do
    expect{ sign_up('Anna', 'aa', 'a@gmail.com', 'bunnies', 'wrong') }.to change(User, :count).by(0)
    expect(current_path).to eq('/users')
    expect(page).to have_content("Sorry, your passwords don't match")
  end

  def sign_up(name = "Chris Oatley",
              username = "flickoid",
              email = "chris.oatley@gmail.com",
              password = "s3cr3t",
              password_confirmation = "s3cr3t")
    visit '/users/new'
    fill_in :name, :with => name
    fill_in :username, :with => username
    fill_in :email, :with => email
    fill_in :password, :with => password
    fill_in :password_confirmation, :with => password_confirmation
    click_button "Sign up"
  end
end
