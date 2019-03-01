require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

adam = Customer.new(first_name: 'Adam', last_name: 'Moran')
alan = Customer.new(first_name: 'Alan', last_name: 'Hong')
josh = Customer.new(first_name: 'Josh', last_name: 'Miles')
adam_driver = Customer.new(first_name: 'Adam', last_name: 'Driver')
katie_jo = Customer.new(first_name: 'Katie Jo', last_name: 'Luningham')

chipotle = Restaurant.new(name: 'Chipotle', address: '600 Main')
franks = Restaurant.new(name: 'Frank\'s Pizza', address: 'Market Square')
hay_merchant = Restaurant.new(name: 'Hay Merchant', address: 'Westheimer & Waugh')

adam_chipotle = Review.new(customer: adam, restaurant: chipotle, rating: 3, content: 'p good')
alan_chipotle = Review.new(customer: alan, restaurant: chipotle, rating: 1, content: 'got sick')
josh_chipotle = Review.new(customer: josh, restaurant: chipotle, rating: 5, content: 'love it!')
adam_franks = Review.new(customer: adam, restaurant: franks, rating: 5, content: 'fav pizza!')
josh_franks = Review.new(customer: josh, restaurant: franks, rating: 2, content: 'ok')
adam_hay_merchant = Review.new(customer: adam, restaurant: hay_merchant, rating: 5, content: 'Best place in town!')

josh_hay_merchant = josh.add_review(restaurant: hay_merchant, rating: 5, content: 'So glad Adam told me about this place!')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
