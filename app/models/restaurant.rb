class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name: )
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews_array
    Review.all.each do |x|
      x
    end
  end

  def self.find_by_name(name)
    Restaurant.all.find do |x|
      x.name == name
    end
  end

  def customers
    customers_array = Review.all.select do |x|
      x.restaurant == self
    end
    customers_array.map do |x|
      x.customer
    end
  end

  # def reviews
  #   reviews_array.select do |x|
  #     x.restaurant == self
    # then do count of the array
  # end
end
