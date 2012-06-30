class Leaf < ActiveRecord::Base
  attr_accessible :description, :name, :type
  validates_uniqueness_of :name

  # def self.types; @@types ||= {}; end

  # validates :type, :inclusion => { 
  #   :in => Leaf.types, 
  #   :message => "%{value} is not a valid leaf type" }


  def describe
  	raise NotImplementedError, "Must be implemented by a subclass!"
  end


  #
  # a *little* magic to handle STI weirdness
  #
  # obviates redefining self.model_name on each class manually
  #
  # class << self
  #   def inherited(subclass)
  #     subclass.instance_eval do
  #       def self.model_name() Leaf.model_name end
  #     end

  #     # if you'd like to keep track of types inside a class variable
  #     # it'll look like { :child_type => "ChildType", :another_child_type => "AnotherChildType" }
  #     # note the classes have to be loaded somewhere first for this to work...
  #     Leaf.types[subclass.name.underscore.to_sym] = subclass.name
  #     super      
  #   end
  # end

end
