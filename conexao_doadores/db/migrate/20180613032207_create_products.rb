class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :description
      t.date :validate
      t.string :product_type

      t.timestamps
    end
  end
end
