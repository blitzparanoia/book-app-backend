class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :comment

  belongs_to :book
end
