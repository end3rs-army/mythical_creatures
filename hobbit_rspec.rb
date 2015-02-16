require './hobbit'

describe Hobbit do
    $stdout = StringIO.new

  before do
    @hobbit = Hobbit.new("Frank")
  end
  
  it "has a name" do
    expect(@hobbit.name).to eq("Frank")
  end

  it "has a different name" do
    @hobbit.name = "Don Juan"
    expect(@hobbit.name).to eq("Don Juan")
  end

  it "has an unadventurous disposition" do
  	expect(@hobbit.disposition).to eq("homebody")
  end

  it "can have a different disposition" do
  	@hobbit.disposition = "bad ass"
  	expect(@hobbit.disposition).to eq("bad ass")
  end

  it "grows older with birthdays" do
	5.times do
		@hobbit.celebrate_birthday
	end
	expect(@hobbit.age).to eq(5)
  end

  it "is a child at 32" do
  	32.times do
  		@hobbit.celebrate_birthday
  	end
  	expect(@hobbit.adult?).to eq(false)
  end

  it "comes of age at 33" do
  	33.times do
  		@hobbit.celebrate_birthday
  	end
  	expect(@hobbit.adult?).to eq(true)

  	#1 year later
  	@hobbit.celebrate_birthday
  	expect(@hobbit.adult?).to eq(true)
  end

end