class MissileCollection
  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(spacecraft)
    missile = Missile.new(spacecraft.muzzle_location)
    missile.launch(spacecraft.missile_velocity)
    add(missile)
  end
end
