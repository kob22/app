require 'spec_helper'

describe "grupy/new" do
  before(:each) do
    assign(:grupa, stub_model(Grupa,
      :grupa => "MyString",
      :przedmiot_id => 1,
      :dzień => "MyString",
      :tydzień => "MyString"
    ).as_new_record)
  end

  it "renders new grupa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => grupy_path, :method => "post" do
      assert_select "input#grupa_grupa", :name => "grupa[grupa]"
      assert_select "input#grupa_przedmiot_id", :name => "grupa[przedmiot_id]"
      assert_select "input#grupa_dzień", :name => "grupa[dzień]"
      assert_select "input#grupa_tydzień", :name => "grupa[tydzień]"
    end
  end
end
