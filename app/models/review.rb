class Review
  
  attr_accessor :review, :content
  attr_accessor :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, review, content)
    @customer = customer
    @restaurant = restaurant
    @review = review
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
  
  def rating

  end

end

