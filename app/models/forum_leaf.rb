class ForumLeaf < Leaf

# I need to have chat rooms and discussion items
# And voting and aggregation

# is this cool to override ('wrap') a getter like this? will it 
# loop infinitely somehow and spam the description field?
#
# well, just for testing sti anyway.
#
  def describe
    @description + " (A forum leaf provides discussion space.)"
  end
end