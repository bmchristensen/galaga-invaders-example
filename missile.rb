require_relative 'vector'

class Missile
  attr_accessor :location, :velocity

  def initialize(location)
    @location = location
  end

  def launch(velocity)
    @velocity = velocity
  end

  def move
    location.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{falling? ? '☄️' : '🚀'} (#{location})"
  end

  def falling?
    velocity > 0
  end
end
