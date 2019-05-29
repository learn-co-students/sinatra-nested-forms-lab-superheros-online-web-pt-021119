class Hero
	attr_accessor :name, :power, :bio, :team

	@@heroes=[]

	def initialize (attribs)
		@name = attribs["name"]

		@power = attribs["power"]
		@bio = attribs["bio"]
		@team = []

		@@heroes<<self
	end

	def self.all
		@@heroes
	end

end