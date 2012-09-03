require 'spec_helper'

describe "przedmioty/edit" do
  before(:each) do
    @przedmiot = assign(:przedmiot, stub_model(Przedmiot,
      :rok => "MyString",
      :przedmiot => "MyString"
    ))
  end

  it "renders the edit przedmiot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => przedmioty_path(@przedmiot), :method => "post" do
      assert_select "input#przedmiot_rok", :name => "przedmiot[rok]"
      assert_select "input#przedmiot_przedmiot", :name => "przedmiot[przedmiot]"
    end
  end
end
