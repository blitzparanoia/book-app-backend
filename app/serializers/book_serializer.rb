class BookSerializer < ActiveModel::Serializer

  attributes :id, :title, :author, :description
  
  has_many :reviews
end
