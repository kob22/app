require 'spec_helper'

describe "przedmioty/new" do
  before(:each) do
    assign(:przedmiot, stub_model(Przedmiot,
      :rok => "MyString",
      :przedmiot => "MyString"
    ).as_new_record)
  end

  it "renders new przedmiot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => przedmioty_path, :method => "post" do
      assert_select "input#przedmiot_rok", :name => "przedmiot[rok]"
      assert_select "input#przedmiot_przedmiot", :name => "przedmiot[przedmiot]"
    end
  end
end
