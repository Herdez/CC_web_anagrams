class AddSortedTermToWords < ActiveRecord::Migration
  def change
  	add_column :words,:sorted_term, :string
  end
end
