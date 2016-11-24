class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :keywords
      t.string :description
      t.string :type_of_wig
      t.string :collection
      t.string :fiber
      t.string :cap_size
      t.string :handtied?
      t.string :special_order?

      t.timestamps null: false
    end
  end
end
