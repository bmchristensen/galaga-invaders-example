# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship
  attr_accessor :x, :y

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move_left
    x -= 5
  end

  def move_right
    x += 5
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


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
It promises to give dependency management. "When objects know too much, they have expectations about the world..." expectations constrain. Really, what OOD is getting at is about building in inherent robustness to change. Metz discusses how OOD solves moral and technical dilemmas of programming and how failures of OOD are not failures of technique but failures of perspective. Perhaps, then OOD promises a different perspective more than anything.

2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
--Single Responsibility
--Open-Closed
--Liskov Substitution
--Interface segregation
--Dependency Inversion

3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
False. BUT, design should never be divorced from code. In other words, Metz posits that following these OOD principles will lead to good design. Over design is anti-Agile and forces us to make assumptions about things we don't yet know. Code should not assume but be ready for inevitable change.

4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
Exemplary = Code should encourage perpetuation of good qualities.

5. How does applying SRP naturally lead to good design?
Forces us to write and refactor code that is robust to change. Single responsiblity distills the nature of methods and attributes i.e. definitions of behavior and variables. 

=end
