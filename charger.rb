require 'stripe'

def do_charge(number, month, year)
  Stripe.api_key = "sk_test_ng34odOhp2RoqZzt6wRpZ7n0"

  charge_object = Stripe::Charge.create(
    :amount => 42000,
    :currency => "usd",
    :card => {
      :number => number,
      :exp_month => month,
      :exp_year => year
    },
    :description => "Lighthouse Test Charge"
  )
  if charge_object.id
    puts "Charge ID: #{charge_object.id}"
  else
    puts "wtf"
  end
  charge_object
end
