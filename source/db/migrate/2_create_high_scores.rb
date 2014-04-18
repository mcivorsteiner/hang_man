require_relative '../config'

class CreateHighScores < ActiveRecord::Migration
	def change
		create_table :high_scores do |t|
			t.integer :score
			t.string :name
		end
	end
end
