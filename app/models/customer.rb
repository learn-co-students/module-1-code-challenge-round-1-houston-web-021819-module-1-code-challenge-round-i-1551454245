class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def my_reviews
    Review.all.select {|review| review.customer == self}
  end

  def add_review(restaurant:, content:, rating:)
    Review.new(restaurant: restaurant, customer: self, rating: rating, content: content)
  end

  def num_reviews
    self.my_reviews.length
  end

  def restaurants
    restaurant_list = self.my_reviews.map {|review| review.restaurant}
    restaurant_list.uniq
  end
end
