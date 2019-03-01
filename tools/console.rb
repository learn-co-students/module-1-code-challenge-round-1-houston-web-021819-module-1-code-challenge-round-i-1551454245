require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
theodore = Customer.new("Theodore","Kimana")
james = Customer.new("James","Robert")
greg = Customer.new("Greg","Jean")

C1= Review.new(theodore,"macdonald","Good",5,)
C2 = Review.new(james,"bergerking","Awesome",6)



macdonald = Restaurant.new("Macdonald")
bergerking = Restaurant.new('Bergerking')





# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line