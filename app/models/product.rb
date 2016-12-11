class Product < ActiveRecord::Base
    
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item
  
def self.import(file)  
  SmarterCSV.process(file.path) do |row|  
   Product.create! row 
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
