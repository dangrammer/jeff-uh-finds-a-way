class AddDescriptionToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :description, :string
  end
end
