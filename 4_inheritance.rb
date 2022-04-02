# Class inheritance
# Overriding methods
# Super

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new
puts sparky.speak
puts paws.speak

#-----------------------
# super in overriding instance method

class Animal2
  def speak
    "Hello!"
  end
end

class GoodDog2 < Animal2
  def speak
    super + " from GoodDog class"
  end
end

sparky = GoodDog2.new
sparky.speak

#-----------------------
# super in initialize method of subclass; arguments automatically passed to superclass

class Animal3
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog3 < Animal3
  def initialize(color)
    super
    @color = color
  end
end

bruno = GoodDog3.new("brown")
p bruno #<GoodDog3:0x00000000021d5d60 @name="brown", @color="brown">

#-------------------
# super in initialize method of subclass; super takes an argument

class BadDog < Animal3
  def initialize(age, name)
    super(name)
    @age = age
  end
end

stephane = BadDog.new(2, "Bear")
p stephane #<BadDog:0x000000000225a470 @name="Bear", @age=2>

class Animal4
  def initialize 
  end
end

class Bear < Animal4
  def initialize(color)
    super() # this sends 0 arguments; if forget parens, it sends 1 arg and raises error
    @color = color
  end
end

bear = Bear.new("black")
p bear
