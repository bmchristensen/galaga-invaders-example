class Missile < Structure
  include destroyable
  include drawable
  
  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end

  draw(sprite)
end
