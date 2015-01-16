require 'spec_helper'

describe "keys/edit" do
  before(:each) do
    @key = assign(:key, stub_model(Key,
      :Company => "MyString",
      :Description => "MyText",
      :Number => 1
    ))
  end

  it "renders the edit key form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", key_path(@key), "post" do
      assert_select "input#key_Company[name=?]", "key[Company]"
      assert_select "textarea#key_Description[name=?]", "key[Description]"
      assert_select "input#key_Number[name=?]", "key[Number]"
    end
  end
end
