class Product < ActiveRecord::Base

	def self.search(term)
    	where("itemcode like :term or productcode like :term or description like :term or keyword like :term", term: "%#{term}%")
  	end

  	def self.import(file)
  		CSV.foreach(file.path, headers: true) do |row|
  			Product.create! row.to_hash
  		end
  	end

end
