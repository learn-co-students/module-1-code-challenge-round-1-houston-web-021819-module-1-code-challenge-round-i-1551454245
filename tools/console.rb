require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cory_h = Customer.new(first_name: 'Cory', last_name: 'Harper')
cary = Customer.new(first_name: 'Cary', last_name: 'Harper')
cody = Customer.new(first_name: 'Cody', last_name: 'Harper')
cory_n = Customer.new(first_name: 'Cory', last_name: 'Nightshade')
watab = Restaurant.new(name: 'Whataburger')
mcd = Restaurant.new(name: 'McDonalds')
wen = Restaurant.new(name: 'Wendys')
cor_r = Review.new(customer: cory_h, restaurant: mcd, rating: 3, content: 'very average')
cor_r2 = Review.new(customer: cory_h, restaurant: watab, rating: 1, content: 'Josh is a better chef')
cor_r3 = Review.new(customer: cory_h, restaurant: watab, rating: 1, content: 'I hope you read this Alan')
car_r = Review.new(customer: cary, restaurant: wen, rating: 5, content: 'fantastic')
cod_r = Review.new(customer: cody, restaurant: watab, rating: 4, content: 'could have been better')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
