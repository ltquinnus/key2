require 'spec_helper'

describe "keys/new" do
  before(:each) do
    assign(:key, stub_model(Key,
      :Company => "MyString",
      :Description => "MyText",
      :Number => 1
    ).as_new_record)
  end

  it "renders new key form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", keys_path, "post" do
      assert_select "input#key_Company[name=?]", "key[Company]"
      assert_select "textarea#key_Description[name=?]", "key[Description]"
      assert_select "input#key_Number[name=?]", "key[Number]"
    end
  end
end
