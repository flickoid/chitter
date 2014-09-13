require 'spec_helper'

# feature "User adds a new link" do
#   scenario "when browsing the homepage" do
#     expect(Peep.count).to eq(0)
#     visit '/'
#     add_peep("flickoid", "Testing text 123")
#     expect(Peep.count).to eq(1)
#     peep = Peep.first
#     expect(peep.posted_by).to eq("flickoid")
#     expect(peep.body).to eq("Testing text 123")
#   end

#   def add_peep(posted_by, body)
#     within('#new-peep') do
#       fill_in 'posted_by', :with => posted_by
#       fill_in 'body', :with => body
#       click_button 'Peep!'
#     end
#   end
# end