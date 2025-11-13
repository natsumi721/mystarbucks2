class AddImageToDrinks < ActiveRecord::Migration[8.1]
  def change
    add_column :drinks, :image, :string
  end
end
