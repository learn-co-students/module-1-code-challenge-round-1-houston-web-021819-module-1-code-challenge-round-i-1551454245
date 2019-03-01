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
  def first_name(name)
    self.first_name.map do | first_name |
      first_name.name
    end 
  end 
  def all_by_first_name(name)
    self.first_name.sellect do |first_name|
      first_name.customer == self
    end 
  end 

end
#   def self.find_by_first_name(name)

# end
