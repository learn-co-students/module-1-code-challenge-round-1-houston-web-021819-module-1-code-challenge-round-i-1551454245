class Review
  @@all = []
  attr_accessor :rating, :content
  attr_reader :customer, :restaurant

  def initialize (customer:, restaurant:, rating:, content:)
    @customer = customer
    @restaurant = restaurant
    self.rating = rating
    self.content = content
    @@all << self
  end #make rating have to be an integer?

  def self.all
    @@all
  end
end
