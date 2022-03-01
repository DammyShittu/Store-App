class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
