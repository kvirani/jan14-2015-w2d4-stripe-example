require './charger'

# Collect CC info (gets.chomp)
# Stripe to create a CC record
# Use Stripe.charge to charge 1,000,000 against that CC
# Terminate program

def run
  puts "Yo give me your CC digits:"
  number = gets.chomp
  puts "Yo when do you expire?"
  expiration = gets.chomp.split('/')
  charge(number, expiration.first, expiration.last)
end

run
