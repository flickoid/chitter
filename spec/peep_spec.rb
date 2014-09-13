require 'spec_helper'

describe Peep do

  context "Demonstration of how datamapper works" do

    it 'should be created and then retrieved from the db' do
      expect(Peep.count).to eq(0)
      Peep.create(:posted_by_name => "Chris Oatley", :posted_by_username => "flickoid", :body => "Testing text 123")
      expect(Peep.count).to eq(1)
      peep = Peep.first
      expect(peep.posted_by_name).to eq("Chris Oatley")
      expect(peep.posted_by_username).to eq("flickoid")
      expect(peep.body).to eq("Testing text 123")
      peep.destroy
      expect(Peep.count).to eq(0)
    end

  end

end