class Missile
  attr_accessor :x, :y, :velocity

  # def initialize(args)
  #   @x = args(:x, 200)
  #   @y = args(:y, 200)
  # end

  # concrete params and a hash for the nebulous
  def initialize(args)
    @x = args(:x, 200)
    @y = args(:y, 200)
    @velocity = args.fetch(:velocity, 0)
  end

  def launch(velocity)
    @velocity = velocity
  end

  def move
    self.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{falling? ? '☄️' : '🚀'} (#{x}, #{y})"
  end

  def falling?
    velocity > 0
  end
end
