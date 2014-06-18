class Reading < ActiveRecord::Base
  def x
    self.id
  end
  def y
    self.temperature
  end
end
