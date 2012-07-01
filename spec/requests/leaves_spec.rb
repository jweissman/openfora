require 'spec_helper'

describe "Leaves" do
  describe "GET /leaves" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get leaves_path
      response.status.should be(200)
    end
  end

  # describe create leaf do ...
  # describe "POST /leaves/create" do
  # end
end
