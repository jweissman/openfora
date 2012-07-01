require 'spec_helper'

describe "leaves/index" do
  before(:each) do
    assign(:leaves, [
      stub_model(Leaf,
        :name => "Name",
        :description => "Description",
        :type => "Type"
      ),
      stub_model(Leaf,
        :name => "Name",
        :description => "Description",
        :type => "Type"
      )
    ])
  end

  it "renders a list of leaves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
