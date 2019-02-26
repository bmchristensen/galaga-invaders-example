require_relative 'vector'
require_relative 'missile'

class Alien
  WIDTH = 50
  HEIGHT = 50

  attr_accessor :location

  def initialize
    @location = Vector.new(200, 200)
  end

  def muzzle_location
    Vector.new(location.x, location.y)
  end

  def missile_velocity
    10
  end

  def move
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{location})"
  end

  def bottom_edge
    location.y + half_height
  end

  private

  def half_height
    HEIGHT / 2
  end
end
