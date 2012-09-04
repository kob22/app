require 'spec_helper'

describe "grupy/show" do
  before(:each) do
    @grupa = assign(:grupa, stub_model(Grupa,
      :grupa => "Grupa",
      :przedmiot_id => 1,
      :dzień => "Dzień",
      :tydzień => "Tydzień"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grupa/)
    rendered.should match(/1/)
    rendered.should match(/Dzień/)
    rendered.should match(/Tydzień/)
  end
end
