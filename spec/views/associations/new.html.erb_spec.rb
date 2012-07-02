require 'spec_helper'

describe "associations/new" do
  before(:each) do
    assign(:association, stub_model(Association,
      :nom => "MyString",
      :president_id => 1,
      :descriptif => "MyString"
    ).as_new_record)
  end

  it "renders new association form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => associations_path, :method => "post" do
      assert_select "input#association_nom", :name => "association[nom]"
      assert_select "input#association_president_id", :name => "association[president_id]"
      assert_select "input#association_descriptif", :name => "association[descriptif]"
    end
  end
end
