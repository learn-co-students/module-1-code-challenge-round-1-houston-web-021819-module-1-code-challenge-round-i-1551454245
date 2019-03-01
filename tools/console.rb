require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob = Customer.new("Bob", "Smith")
sally = Customer.new("Sally", "Sue")
felix = Customer.new("Felix", "Williams")

peli_peli = Restaurant.new("Peli Peli")
tgi_friday = Restaurant.new("TGI Friday")
chillis = Restaurant.new("Chillis")

review1 = Review.new(author: "Sally", restaurant:"Peli Peli", star_rating: 5, content: "This is great")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
