class Centaur

	attr_reader :name, :breed
	attr_accessor :temperment

	def initialize(name,breed,temperment = :chill)
		@name = name
		@breed = breed
		@mood = false
		@stand = true
		@move = 0
		@temperment = temperment
	end

	def shoot
		@move += 1
		cranky?
		if @mood == true || @stand == false
			"NO!"
		elsif @mood == false 
			"Bang!!!"
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
		if @move <= 20 && chill?
			@mood = false
		else
			@mood = true
		end
	end

	def chill?
		@temperment == :chill
	end

	def sleep
		standing?
		if @stand == true
			"NO!"
		else
			"Good night. Sleep tight!"
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
