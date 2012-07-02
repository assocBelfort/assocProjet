require 'spec_helper'

describe "associations/index" do
  before(:each) do
    assign(:associations, [
      stub_model(Association,
        :nom => "Nom",
        :president_id => 1,
        :descriptif => "Descriptif"
      ),
      stub_model(Association,
        :nom => "Nom",
        :president_id => 1,
        :descriptif => "Descriptif"
      )
    ])
  end

  it "renders a list of associations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Descriptif".to_s, :count => 2
  end
end
