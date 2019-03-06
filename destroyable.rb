module Destroyable
  def destroyed?
    @hit_points <= 0
  end
end
