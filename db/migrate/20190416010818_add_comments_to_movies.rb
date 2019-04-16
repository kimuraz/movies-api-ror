class AddCommentsToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :comment_id, :integer
  end
end
