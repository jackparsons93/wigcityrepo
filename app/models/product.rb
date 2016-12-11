class Product < ActiveRecord::Base
  attr_accessor :productString
 attr_accessor :varTest    
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item
  
def self.import(file)  
  SmarterCSV.process(file.path) do |row|  
   Product.create! row 
  end  
end 

def self.varTest
    3
end


  productString=String.new



    @@products=Product.all.order(:product_name)
    @@images = Dir.glob("app/assets/images/*/*")
    @@images.each do |image| 
    @@products.each do |product| 
    if image.include? product.product_name.gsub(/\s/,'_')
    product.images= product.images+("Wigs/#{image}")
    product.save!
    
   

    end
end
end



 


  private
# ensure that there are no line items referencing this product
 def ensure_not_referenced_by_any_line_item
 unless line_items.empty?
 errors.add(:base, 'Line Items present')
 throw :abort
 end
 end
end
