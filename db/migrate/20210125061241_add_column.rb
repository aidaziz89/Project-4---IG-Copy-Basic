class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :text
    add_column :users, :fullname, :text
  end
end
