class Review

attr_reader :customer, :restaurant
attr_accessor :rating, :content

  @@all = []

  def initialize(customer:, restaurant:, rating:, content:)
    @restaurant = restaurant
    @customer = customer
  if rating >= 1 && rating <= 5
    @rating = rating
  else
    rating = nil
  end
    @content = content.to_s
    @@all << self
  end

  def self.all
    @@all
  end



end
