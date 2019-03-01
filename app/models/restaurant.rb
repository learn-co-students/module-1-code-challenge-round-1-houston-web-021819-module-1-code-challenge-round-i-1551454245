class Restaurant
  attr_accessor :name
 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |res|
      res.name == name
    end
  end

  def customers
   results = Review.all.select do |review|
      review.restaurant == self
    end
   results.map do |result|
    result.customer
   end.uniq 
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    total = 0
    self.reviews.map do |review|
      total += review.rating
    end
    all = self.reviews
    avg = total/ all.length
  end

end
