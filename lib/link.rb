
class Link

  include DataMapper::Resource 

  property :id,  Serial
  property :title,  String, :required => true
  property :url, String, :required => true
  property :description, String
  property :created_at, DateTime
  # property :complete, Boolean, :required => true, :default => false

end