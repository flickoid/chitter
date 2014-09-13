require 'spec_helper'

feature "User browses the list of peeps" do

  before(:each) {
    Peep.create(:posted_by_name => "Chris Oatley",
                :posted_by_username => "flickoid",
                :body => "Testing text 123")
  }

  scenario "when opening the home page" do
    visit '/'
    expect(page).to have_content("Testing text 123")
  end
end