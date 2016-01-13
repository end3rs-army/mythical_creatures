class Centaur

	attr_reader :name, :breed
	attr_accessor :arrow_count

	def initialize(name,breed,arrow_count)
		@name = name
		@breed = breed
		@mood = false
		@stand = true
		@move = 0
		@arrow_count = arrow_count
	end

	def shoot
		@move += 1
		remove_arrow_from_quiver
	end

	def run
		@move += 1
		cranky?
		if @mood == true || @stand == false
			"NO!"
		elsif @mood == false
			"Clop clop clop clop!!!"
		end
	end

	def cranky?
		@move > 3 || @name == "Brody"
	end

	def sleep
		standing?
		if @stand == true
			"NO!"
		else
			@move = 0
		end
	end

	def standing?
		@stand
	end

	def laying?
		if @stand == false
			true
		else
			false
		end 
	end

	def lay_down
		@stand = false
	end

	def stand_up
		@stand = true
	end

	def standing?
		@stand
	end

	def remove_arrow_from_quiver

	end
end
