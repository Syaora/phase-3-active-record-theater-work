class Role < ActiveRecord::Base
  has_many :auditions

  def actors
  end

  def locations
  end

  def lead
  end

  def understudy
  end
end