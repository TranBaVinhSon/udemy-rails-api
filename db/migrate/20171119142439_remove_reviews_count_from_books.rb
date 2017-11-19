class RemoveReviewsCountFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :reviews_count
  end
end
