require 'spec_helper'

describe "leaves/show" do
  before(:each) do
    @leaf = assign(:leaf, stub_model(Leaf,
      :name => "Name",
      :description => "Description",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Type/)
  end
end
