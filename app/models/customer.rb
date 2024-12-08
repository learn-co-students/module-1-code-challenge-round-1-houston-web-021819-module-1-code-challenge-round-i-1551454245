class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
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

  def self.find_by_name(full_name)
    @@all.find { |customer| customer.full_name == full_name }
  end

  def self.find_all_by_first_name(first_name)
    @@all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    @@all.collect do |customer|
       customer.full_name 
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(customer: self, restaurant: restaurant, content: content, rating: rating)
  end

  def num_reviews
    reviews_for_a_customer = Review.all.select do |review|
      review.customer == self
    end
    reviews_for_a_customer.length 
  end


  def restaurants
    all_restaurants_for_a_customer = Review.all.select do |review|
      review.restaurant 
    end
    all_restaurants_for_a_customer.uniq
  end


end


