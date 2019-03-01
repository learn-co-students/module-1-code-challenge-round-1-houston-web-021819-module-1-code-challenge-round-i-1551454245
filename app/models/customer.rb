class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name: , last_name: )
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
    Customer.all.find do |x|
      x.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |x|
      x.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |x|
      x.full_name
    end
  end

  def add_review(restaurant: ,content: ,rating: )
    new_review = Review.new(customer: self,restaurant: restaurant,content: content,rating: rating)   
  end

  def num_reviews
    reviews_array = Review.all.select do |x|
      x.customer == self
    end
    reviews_array.count
  end
  
  def restaurants
    restaurants_array = Review.all.select do |x|
      x.customer == self
    end
    restaurants_array.map do |x|
      x.restaurant
    end
    #sorry for the repitition just copied and pasted for time
  end


end
