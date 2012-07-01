class Leaf < ActiveRecord::Base
  attr_accessible :name, :description, :type

  # validates :name, :presence => true
  # validates :description, :presence => true
  # validates :type, :presence => true
end
