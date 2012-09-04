require 'spec_helper'

describe "grupy/index" do
  before(:each) do
    assign(:grupy, [
      stub_model(Grupa,
        :grupa => "Grupa",
        :przedmiot_id => 1,
        :dzień => "Dzień",
        :tydzień => "Tydzień"
      ),
      stub_model(Grupa,
        :grupa => "Grupa",
        :przedmiot_id => 1,
        :dzień => "Dzień",
        :tydzień => "Tydzień"
      )
    ])
  end

  it "renders a list of grupy" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grupa".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Dzień".to_s, :count => 2
    assert_select "tr>td", :text => "Tydzień".to_s, :count => 2
  end
end
