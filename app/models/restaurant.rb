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
    Restaurant.all.first{|restaurant| restaurant == name}
  end

  def customers
    array = Review.all.select {|review| review.customer == self}
    array.uniq
  end

  def reviews
    Review.all.select {|review| review.restuarant == self}
  end

  def average_star_rating
  end
end
