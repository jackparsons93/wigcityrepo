class Product < ActiveRecord::Base
    
def self.import(file)  
  SmarterCSV.process(file.path) do |row|  
   Product.create! row 
  end  
end 
end
