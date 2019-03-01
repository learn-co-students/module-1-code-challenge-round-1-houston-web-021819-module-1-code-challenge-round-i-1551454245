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

  def self.find_by_name(name) #grab the full name first
    @@all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name ==  name
    end
  end

  def self.all_names
    @@all.map do |customer|
      customer.full_name       #use the method bult above
    end
  end

  def add_review(restaurant, content, rating) #resturant should pass an instance
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants
    results = Review.all.select do |review|   
      review.customer == self
    end
    
    #rest = []
    #this_rest = nil
    #results.map do |review|
     # if this_rest.restaurant != review.restaurant
      #  rest << review
      # end
    #end
    #rest
  end

end
