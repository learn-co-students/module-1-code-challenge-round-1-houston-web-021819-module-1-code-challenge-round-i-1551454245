class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(fullname)
    Customer.all.find do |customer|
      customer.full_name == fullname
    end
  end

  def self.find_all_by_first_name(firstname)
    Customer.all.select do |customer|
      customer.first_name == firstname
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant: restaurant, content: content, rating: rating)
    Review.new(customer: self, restaurant: restaurant, content: content, rating: rating)
  end

  def num_reviews
    total = []
    Review.all.each do |review|
      if review.customer == self
        total << review
      end
    end
    total.length
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end
  end


end
