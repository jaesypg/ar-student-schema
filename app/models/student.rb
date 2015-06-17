require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    now = Time.now.utc.to_date
    now.year - self.birthday.year - (self.birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

end