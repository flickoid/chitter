require 'spec_helper'

# require './lib/user'

feature "User signs up" do

  scenario "when being logged out" do
    expect{ sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Welcome, Chris Oatley")
    expect(User.first.name).to eq("Chris Oatley")
  end

  def sign_up(name = "Chris Oatley",
              username = "flickoid",
              email = "chris.oatley@gmail.com",
              password = "s3cr3t")
    visit '/users/new'
    fill_in :name, :with => name
    fill_in :username, :with => username
    fill_in :email, :with => email
    fill_in :password, :with => password
    click_button "Sign up"
  end
end
