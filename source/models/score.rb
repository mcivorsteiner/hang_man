require_relative '../db/config'
class Score < ActiveRecord::Base
	validates :name, length: {maximum: 10}

end