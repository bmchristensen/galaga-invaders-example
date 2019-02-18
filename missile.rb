class Missile
  attr_accessor :x, :y

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move
    y -= 5
  end

  def missile_coordinates
    missile_coordinates << [x, calculate_missile_y()]
  end

  def calculate_missile_y
    y = y - HEIGHT / 2
  end

  def fire_missile
    missile_coordinates()
  end

  # Coordinates = Struct.new(:x, :y)
  # def get_missile_coordinates(data)
  #   data.collect{|missile_coordinates|
  #     Coordinates.new(missile_coordinates[])}

  def move_missiles
    missile_coordinates.each do |missile|
      missile[1] -= 10
    end
  end

  def draw
    # Ignore this
  end

  def draw_missiles
    missile_coordinates.each do |missile|
    end
  end
end
