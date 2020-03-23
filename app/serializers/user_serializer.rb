class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :items
  has_many :outfits
  has_many :boards 
end
