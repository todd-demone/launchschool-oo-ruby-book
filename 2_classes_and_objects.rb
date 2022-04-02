class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w) 
    @name = n 
    @height = h
    @weight = w
  end

  def speak
    "#{name} says Arf!" 
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs') 
puts sparky.info
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "Your new #{color} paint job looks great!"
  end

end

civic = MyCar.new(2018, "white", "civic")
civic.speed_up(20)
civic.current_speed
civic.speed_up(20)
civic.current_speed
civic.brake(20)
civic.current_speed
civic.brake(20)
civic.current_speed
civic.shut_down
civic.current_speed
puts civic.color
puts civic.year
civic.spray_paint('red')
