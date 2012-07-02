require 'spec_helper'

describe "associations/edit" do
  before(:each) do
    @association = assign(:association, stub_model(Association,
      :nom => "MyString",
      :president_id => 1,
      :descriptif => "MyString"
    ))
  end

  it "renders the edit association form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => associations_path(@association), :method => "post" do
      assert_select "input#association_nom", :name => "association[nom]"
      assert_select "input#association_president_id", :name => "association[president_id]"
      assert_select "input#association_descriptif", :name => "association[descriptif]"
    end
  end
end
