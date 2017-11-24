class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content_rating, :recommend_rating, :average_rating, :picture
  belongs_to :user
  belongs_to :book
end
