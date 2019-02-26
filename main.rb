#!/usr/bin/env ruby

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
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end
end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
   Polymorphism is the ability of many different objects to respond to the same message therefore a message a can have many forms. Polymorphic mehods are interchangeable. Duck typing is one method of achieving polymorphism since they abstract a shared public interface allowing for a variety of messages to be sent--do a certain thing with a message regardless of where the message originated.
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
   Metz lists three common paters that tend to reveal hidden ducks or the need for a duck:
   --case statements that switch on class
   --kind_of? and is_a?
   --responds_to?
3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
   False. One of the costs of duck typing (abstractions like duck typing) is that the difficulty of understanding the code increases while the ability to extend the code also increases i.e. more flexible code but harder to understand.
=end
