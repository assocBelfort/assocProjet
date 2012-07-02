require 'spec_helper'

describe "associations/show" do
  before(:each) do
    @association = assign(:association, stub_model(Association,
      :nom => "Nom",
      :president_id => 1,
      :descriptif => "Descriptif"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nom/)
    rendered.should match(/1/)
    rendered.should match(/Descriptif/)
  end
end
