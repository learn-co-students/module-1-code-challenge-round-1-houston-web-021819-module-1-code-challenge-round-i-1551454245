class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def find_by_name(name)
    Restaurant.first {|restaurant| restaurant.name == self}
  end

end
