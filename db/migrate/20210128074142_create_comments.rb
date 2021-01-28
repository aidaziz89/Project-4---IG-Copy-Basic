class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :post_id
      t.integer :user_id
      t.timestamps

      t.references :posts
      t.references :users
    end
  end
end
