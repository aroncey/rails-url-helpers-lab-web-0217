class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def change_activation_status
    self.active == false ? self.active = true : self.active = false
  end

  def active_status
    active == true ? "active" : "inactive"
  end
end
