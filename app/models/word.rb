class Word < ActiveRecord::Base
  # Remember to create a migration!
  
  def self.canonical(term)
    term.split("").sort.join("")
  end

  def self.anagrams_of(term)
    canonical_input = self.canonical(term)
    #it uses ActiveRecord
    self.where(canonical: canonical_input)
    #without ActiveRecord
  	# @list_terms = []
    # list = Word.all
    # list.each do |term|
	  #   @list_terms << term.term if term.canonical == @canonical_input
    # end
    # @list_terms
  end
  
end
