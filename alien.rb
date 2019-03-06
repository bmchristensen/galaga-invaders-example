class Alien < Structure
  include destroyable
  include drawable

  def initialize(args)
    @sprite = args.fetch[:sprite]
  end

  draw(sprite)
end
