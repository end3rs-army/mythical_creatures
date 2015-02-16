#To run rspec from command line the command would look like:
#   rspec filename.rb

require './medusa'

describe Medusa do
    $stdout = StringIO.new

  before do
    @medusa = Medusa.new("Cassiopeia")
    @victim = Person.new("Perseus")
  end
  
  it "has a name" do
    expect(@medusa.name).to eq("Cassiopeia")
  end

  it "has no statues when first created" do
    expect(@medusa.statues.empty?).to eq(true)
  end

  it "has statues" do
    expect(@medusa).to respond_to(:statues)
  end

  it "responds to staring" do
    expect(@medusa).to respond_to(:stare)
  end  

  it "it has no statues when created" do
    expect(@medusa.statues.size).to eq(0)
  end

  it "gains statues" do
    @medusa.stare(@victim)
    expect(@medusa.statues.count).to eq(1)
    expect(@medusa.statues.first.name).to eq("Perseus")
  end

  it "turns victims to stone" do
    expect(@victim.stoned?).to eq(false)
    @medusa.stare(@victim)
    expect(@victim.stoned?).to eq(true)
  end
  
end






