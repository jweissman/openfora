class Leaf < ActiveRecord::Base
  attr_accessible :name, :description, :type, :created_at

  # validates :name, :presence => true
  # validates :description, :presence => true
  # validates :type, :presence => true
end
