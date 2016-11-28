require_relative 'data_mapper_setup'

class Pair
  include DataMapper::Resource

  property :id, Serial
  property :keyInput, String
  property :valueInput, String

end
