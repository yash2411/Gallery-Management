class AddCoulmnToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :name, :string
    add_column :posts, :price, :integer
    add_column :posts, :desc, :string
  end
end
