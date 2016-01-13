class Centaur

	attr_reader :name, :breed

	def initialize(name,breed)
		@name = name
		@breed = breed
		@mood = false
		@stand = true
		@move = 0
	end

	def shoot
		@move += 1
		cranky?
		if @mood == true || @stand == false
			"NO!"
		elsif @mood == false 
			"Twang!!!"
		end	
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
		if @move < 3
			@mood = false
		else
			@mood = true
		end
	end

	def sleep
		standing?
		if @stand == true
			"NO!"
		else
			"Good night."
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
end
