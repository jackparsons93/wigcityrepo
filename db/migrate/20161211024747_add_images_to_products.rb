class AddImagesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :images, :text, array:true
  end
end
