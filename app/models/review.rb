class Review
    attr_accessor :rating,:content
    attr_reader :customer,:restaurant
    def initialize(rating,content,customer,restaurant)
        @rating = rating
        @content = content 
        @customer = customer
        @restaurant = restaurant
    end 
    def self.all
        @@all 
    end 
end


