require 'spec_helper'

describe "grupy/edit" do
  before(:each) do
    @grupa = assign(:grupa, stub_model(Grupa,
      :grupa => "MyString",
      :przedmiot_id => 1,
      :dzień => "MyString",
      :tydzień => "MyString"
    ))
  end

  it "renders the edit grupa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => grupy_path(@grupa), :method => "post" do
      assert_select "input#grupa_grupa", :name => "grupa[grupa]"
      assert_select "input#grupa_przedmiot_id", :name => "grupa[przedmiot_id]"
      assert_select "input#grupa_dzień", :name => "grupa[dzień]"
      assert_select "input#grupa_tydzień", :name => "grupa[tydzień]"
    end
  end
end
