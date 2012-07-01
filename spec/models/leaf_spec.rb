require 'spec_helper'

describe Leaf, "#subclasses" do
  it "should create each of its subtypes" do
  	Leaf.subclasses.each do |subclass|	
	  name = subclass.name
	  leaf = subclass.create! :name => name.downcase, :description => 'lorem'
	  leaf.type.should == name
  	end
  end
end
