#To run rspec from command line the command would look like:
#   rspec filename.rb

require './dragon'

describe Dragon do
    $stdout = StringIO.new

  context "First dragon" do
	  
	  before do
	    @dragon = Dragon.new("Mihir", :gold, "Me")
	  end
	  
	  it "has a name" do
	    expect(@dragon.name).to eq("Mihir")
	  end

	  it "has a rider" do
	    expect(@dragon.rider).to eq("Me")
	  end

	  it "has a color" do
	  	expect(@dragon.color).to eq(:gold)
	  end
  end

  context "Second dragon" do
  	
  	before do
  		@dragon = Dragon.new("Bazil", :green, "The Dude")
  	end

  	it "has a name" do
	    expect(@dragon.name).to eq("Bazil")
	end

	it "has a rider" do
	    expect(@dragon.rider).to eq("The Dude")
	end

	it "has a color" do
	  	expect(@dragon.color).to eq(:green)
	end

	it "is born hungry" do
		expect(@dragon.hungry?).to eq(true)
	end

	it "eats a lot" do
		3.times do 
			@dragon.eat
		end
		expect(@dragon.hungry?).to eq(false)
	end
  end
end