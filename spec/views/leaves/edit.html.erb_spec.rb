require 'spec_helper'

describe "leaves/edit" do
  before(:each) do
    @leaf = assign(:leaf, stub_model(Leaf,
      :name => "MyString",
      :description => "MyString",
      :type => ""
    ))
  end

  it "renders the edit leaf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => leaves_path(@leaf), :method => "post" do
      assert_select "input#leaf_name", :name => "leaf[name]"
      assert_select "input#leaf_description", :name => "leaf[description]"
      assert_select "input#leaf_type", :name => "leaf[type]"
    end
  end
end
