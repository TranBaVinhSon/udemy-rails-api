class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :image,
    :average_rating_of_book, :content_rating_of_book, :recommend_rating_of_book
  has_many :reviews

  def average_rating_of_book
    object.reviews.count == 0 ? 0 : object.reviews.average(:average_rating).round(1)
  end

  def content_rating_of_book
    object.reviews.count == 0 ? 0 : object.reviews.average(:content_rating).round(1)
  end

  def recommend_rating_of_book
    object.reviews.count == 0 ? 0 : object.reviews.average(:recommend_rating).round(1)
  end
end
