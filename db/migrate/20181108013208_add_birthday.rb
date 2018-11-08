class AddBirthday < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_users, :birthday, :string
    add_column :spree_users, :gender, :string
  end
end
