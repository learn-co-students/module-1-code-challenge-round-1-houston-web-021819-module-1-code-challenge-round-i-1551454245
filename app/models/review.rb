class Review
  attr_reader :restaurant, :customer
  attr_accessor :rating, :content
  @@all = []

      def initialize(customer, restaurant, rating, content)
          @customer = customer
          @restaurant = restaurant
            if rating < 5
            rating = 0
            else
          @rating = rating
          @content = content
          @@all << self
        end
      end

      def self.all
        @@all
      end



    end
