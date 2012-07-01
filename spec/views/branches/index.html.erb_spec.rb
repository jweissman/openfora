require 'spec_helper'

describe "branches/index" do
  before(:each) do
    assign(:branches, [
      stub_model(Branch,
        :name => "Name",
        :description => "Description",
        :created_at => Time.now
      ),
      stub_model(Branch,
        :name => "Name",
        :description => "Description",
        :created_at => Time.now
      )
    ])
  end

  it "renders a list of branches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
