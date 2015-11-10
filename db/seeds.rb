# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 
puts "entre a seed"
module WordSeeds
	def self.import(filename=File.dirname(__FILE__) + "/../words.csv")
	  field_names = nil
	  Word.transaction do
	    File.open(filename).each_with_index do |line, index|
	      data = line.chomp.split(',')
	      if field_names.nil?
	        field_names = data
	      else
	        attribute_hash = Hash[field_names.zip(data)]
	        p attribute_hash
	        canonical = attribute_hash["term"].split("").sort.join("")
	        Word.create!(term: attribute_hash["term"], canonical: canonical)
	      end
	    end
	  end
	end
end

