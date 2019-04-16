class RemoveCommentIdFromMovie < ActiveRecord::Migration[5.2]
  def change
		remove_column :movies, :comment_id	
  end
end
