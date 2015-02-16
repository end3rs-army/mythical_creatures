class Hobbit

	attr_reader :age
	attr_accessor :name, :disposition

	def initialize(name, disposition = "homebody")
		@name = name
		@disposition = disposition
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def adult?
		if @age <= 32
			false
		else
			true
		end
	end
end