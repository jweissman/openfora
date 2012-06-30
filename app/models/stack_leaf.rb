class StackLeaf < Leaf
	# I am a stack leaf! That means Q&A is my forte,
	# though I still need chat rooms and some space
	# to permit discussion. But mainly questions and 
	# answers! That's the good stuff.
	def describe
	  @description + <<-STOP
	    A stack is somewhere between a forum and a wiki, 
	    with some aggregation features. 
	  STOP
	end
end