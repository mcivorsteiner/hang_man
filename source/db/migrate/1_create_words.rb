require_relative '../config'

class CreateWords < ActiveRecord::Migration
	def change
		create_table :words do |t|
			t.string :word
      t.boolean :used
		end
	end
end


