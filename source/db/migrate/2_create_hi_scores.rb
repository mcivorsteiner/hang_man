require_relative '../config'

class CreateHiScores < ActiveRecord::Migration
	def change
		create_table :scores do |t|
			t.integer :score
			t.string :name
		end
	end
end
