require './spec/spec_helper'
require './charger'

describe "#do_charge" do 

  it "Attempts to create a new Stripe charge for $420" do 
    return_object = double("Stripe Charge stunt double", id: "1231231231")#Stripe::Charge.new(id:"fdasfasfafas")

    expect(Stripe::Charge).to receive(:create).and_return(return_object)

    result = do_charge("4111111111111111", "07", "2018")
    puts result.inspect
  end

end