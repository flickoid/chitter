class Peep


  include DataMapper::Resource

  property :id, Serial
  property :posted_by_name, String
  property :posted_by_username, String
  property :body, Text

end