class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name:)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name:)
    restaurant = Restaurant.all.select do | restaurant |
      restaurant.name == self
    end
    restaurant
  end
  #returns empty array

  def customers
    reviews = Review.all.select do | review |
      review.restaurant == self
    end
    reviews.map do | value |
      value.customer
    end
  end

  def reviews
    Review.all.select do | review |
      review.restaurant == self
    end
  end

  def average_star_rating
    ratings = self.reviews.map do | value |
      value.rating
    end
    ratings.avg
  end

end


