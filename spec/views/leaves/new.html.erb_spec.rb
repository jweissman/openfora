require 'spec_helper'

describe "leaves/new" do
  before(:each) do
    assign(:leaf, stub_model(Leaf,
      :name => "MyString",
      :description => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new leaf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => leaves_path, :method => "post" do
      assert_select "input#leaf_name", :name => "leaf[name]"
      assert_select "input#leaf_description", :name => "leaf[description]"
      assert_select "input#leaf_type", :name => "leaf[type]"
    end
  end
end
