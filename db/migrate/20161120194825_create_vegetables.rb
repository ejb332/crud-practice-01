class CreateVegetables < ActiveRecord::Migration[5.0]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.string :color
      t.boolean :delicious

      t.timestamps
    end
  end
end
