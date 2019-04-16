class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment
      t.User :user
      t.Movie :movie
      t.float :rate
      t.datetime :date

      t.timestamps
    end
  end
end
