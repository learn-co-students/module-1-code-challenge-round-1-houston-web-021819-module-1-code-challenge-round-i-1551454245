class Review
  @@all = []
  attr_reader :customer, :restaurant
  attr_writer :rating, :content
  def initialize(customer, restaurant, content, rating)
    @customer = customer 
    @restaurant = restaurant
    self.rating = rating
    self.content = content
    @@all << self
  end  
  
  def self.all
    @@all
  end

  def restaurant
    @restaurant
  end

  def customer
    @customer
  end
end

