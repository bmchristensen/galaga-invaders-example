require_relative 'missile'

class Alien
  WIDTH = 50
  HEIGHT = 50

  attr_accessor :x, :y

  def initialize
    @x = 200
    @y = 200
  end

  def move; end

  def draw
    puts self
  end

  def to_s
    "👾 (#{x}, #{y})"
  end

  def fire(missiles)
    missiles.add(missile)
  end

  def new_missile
    Missile.new(x: x, y: half_height, velocity: ordnance_velocity)
  end

  def ordnance_velocity
    10
  end

  def muzzle_location
    Vector.new(x, bottom_edge)
  end

  def bottom_edge
    y + HEIGHT / 2
  end
end

Vector = Struct.new(:x, :y)
