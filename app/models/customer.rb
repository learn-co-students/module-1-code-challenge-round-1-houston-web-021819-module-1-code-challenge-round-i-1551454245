class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name:, last_name:)
    self.first_name = first_name
    self.last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name (full_name)
    self.all.find {|cust| cust.full_name == full_name}
  end

  def self.find_all_by_first_name (first_name)
    self.all.select {|cust| cust.first_name == first_name}
  end

  def self.all_names
    self.all.map {|cust| cust.full_name}
  end

  def add_review (restaurant:, rating:, content:)
    Review.new(customer: self, restaurant: restaurant, rating: rating, content: content)
  end

  def reviews
    Review.all.select {|rev| rev.customer == self}
  end

  def num_of_reviews
    self.reviews.count
  end

  def restaurants
    self.reviews.map {|rev| rev.restaurant}
  end
end
