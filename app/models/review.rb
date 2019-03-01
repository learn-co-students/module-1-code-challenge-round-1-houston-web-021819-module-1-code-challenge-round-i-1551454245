class Review
    attr_accessor :customer, :restaurant, :rating, :content
    @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer  #instance
    @restaurant = restaurant #instance
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end

