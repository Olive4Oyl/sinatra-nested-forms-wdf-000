require 'pry'
class Pirate

	attr_accessor :name, :weight, :height

	@@all = []

	def initialize(hash)
		@name = hash[:name]
		@weight = hash[:weight]
		@height = hash[:height]
		@@all << self
		# binding.pry
	end

	def self.all
		@@all
	end

	def self.clear
		@@all.clear
	end


end