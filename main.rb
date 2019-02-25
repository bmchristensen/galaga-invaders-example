require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders
  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = 'Galaga Invaders'
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    loop do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      # ship relies on missiles, maybe missile should depend on ship
      missiles.launch_for(ship)
    end
    if key == 'p'
      missiles.launch_for(alien)
    end
  end
end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. True or False: Good OO design eliminates dependencies.
  --False, good OO design minimizes dependencies. While it may be technically possible to eliminate 
    all dependencies, it may not always be actually possible.

2. Briefly list four ways in which a class that collaborates with another class
   is dependent on it. (For example, one dependency is knowing the other class name.)
   --knowing the name, as stated
   --knowing the argument order
   --
3. What are two primary factors to consider when assessing the risk of a dependency?
  --How likely is the object to change
  --How many dependents are entangled
4. What is Metz's rule of thumb for choosing a dependency direction?
  --Depend on things that change less often.
=end
