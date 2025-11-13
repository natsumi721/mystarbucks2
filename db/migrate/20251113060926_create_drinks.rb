class CreateDrinks < ActiveRecord::Migration[8.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :price
      t.string :category

      t.timestamps
    end
  end
end
