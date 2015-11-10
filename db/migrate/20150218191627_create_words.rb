class CreateWords < ActiveRecord::Migration
  def change
  	create_table :words do |t|
  		t.string :term
  		t.string :canonical
  		t.timestamp
  	end
  end
end
