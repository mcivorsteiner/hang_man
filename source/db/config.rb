require 'active_record'
require_relative '../models/word'
require_relative '../models/highscore'
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/data/words.db")
