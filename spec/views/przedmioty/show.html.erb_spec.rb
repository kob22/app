require 'spec_helper'

describe "przedmioty/show" do
  before(:each) do
    @przedmiot = assign(:przedmiot, stub_model(Przedmiot,
      :rok => "Rok",
      :przedmiot => "Przedmiot"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rok/)
    rendered.should match(/Przedmiot/)
  end
end
