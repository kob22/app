require 'spec_helper'

describe "przedmioty/index" do
  before(:each) do
    assign(:przedmioty, [
      stub_model(Przedmiot,
        :rok => "Rok",
        :przedmiot => "Przedmiot"
      ),
      stub_model(Przedmiot,
        :rok => "Rok",
        :przedmiot => "Przedmiot"
      )
    ])
  end

  it "renders a list of przedmioty" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rok".to_s, :count => 2
    assert_select "tr>td", :text => "Przedmiot".to_s, :count => 2
  end
end
