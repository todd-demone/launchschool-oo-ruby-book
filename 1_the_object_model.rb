=begin
OBJECT-ORIENTED PROGRAMMING IN RUBY
Encapsulation
- hiding code from the rest of the code base.
- protects data from being tampered with
- objects - used to house data
- interfaces - methods - allow interaction with objects
Polymorphism
- "poly" = many
- "morph" = forms

- things that are not objects in Ruby - methods, blocks, variables
=end


module Speak # module = a collection of behaviours
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog # modules & classes capitalized
  include Speak # classes can use behaviour provided by modules
end

class HumanBeing
  include Speak 
end

sparky = GoodDog.new 
sparky.speak("Arf!")
bob = HumanBeing.new
bob.speak("Hello!")

puts "---GoodDog ancestors---"
puts GoodDog.ancestors # shows method lookup chain; GoodDog -> Speak -> Object... 
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors

module MyModule
  def bark
    puts "woof"
  end
end

class MyClass
  include MyModule
end

myObj = MyClass.new
myObj.bark
