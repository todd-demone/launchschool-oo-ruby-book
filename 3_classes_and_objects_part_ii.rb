# Class methods 
# Class variables
# Constants
# to_s method
# self

class GoodDog

  DOG_YEARS = 7

  attr_accessor :name, :age

  @@number_of_dogs = 0

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

end

puts GoodDog.what_am_i
puts GoodDog.total_number_of_dogs
sparky = GoodDog.new("Sparky", 4)
puts sparky.age
puts sparky
p sparky


class GoodDog2
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

end


spartacus = GoodDog2.new('Spartacus', '24 inches', '30 lbs')
p spartacus.what_is_self
