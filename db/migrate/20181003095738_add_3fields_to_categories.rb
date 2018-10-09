class Add3fieldsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :cgroup, :integer
    add_column :categories, :sort_order, :integer
    add_column :categories, :active, :boolean
  end
end
