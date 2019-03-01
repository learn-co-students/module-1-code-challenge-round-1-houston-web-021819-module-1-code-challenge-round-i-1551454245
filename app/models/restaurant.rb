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
    @@all.find {|restaurant| restaurant.name == name}
  end

  def customers
    all_reviews_for_me =     Review.all.select { |review| review.restaurant == self || review.restaurant == self.name}
    my_customers = all_reviews_for_me.map {|review| review.customer}.uniq
    my_customers
  end

  def reviews
    Review.all.select { |review| review.restaurant == self|| review.restaurant == self.name}
  end
  
  def average_star_rating
    my_reviews = Review.all.select { |review| review.restaurant == self || review.restaurant == self.name}
    my_ratings_arr = my_reviews.map { |review | review.rating}
    sum = 0
    ratings_sum = my_ratings_arr.inject(0){ | sum, rating | sum + rating}
    avg_rating = (ratings_sum / my_ratings_arr.length).to_f.round(2)
    return avg_rating
  end
  
  def longest_review
    my_review_content_arr = self.reviews.map { |review| review.content}
    longest_reviw = my_review_content_arr.sort { |x,y| y.length <=> x.length }.first 
    #I googled "how to find longest string in array ruby", find this solution on https://snipplr.com/view/37935/find-the-longest-value-in-an-array/

  end

end
