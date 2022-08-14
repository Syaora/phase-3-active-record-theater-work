class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map do |audition|
      audition.actor
    end
  end

  def locations
    self.auditions.map do |audition|
      audition.location
    end
  end

  def lead
    self.auditions.first ? self.auditions.first.actor : 'no actor has been hired for this role'
  end

  def understudy
    self.auditions.second ? self.auditions.second.actor : 'no actor has been hired for understudy for this role'
  end
end