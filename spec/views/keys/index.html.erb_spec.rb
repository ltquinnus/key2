require 'spec_helper'

describe "keys/index" do
  before(:each) do
    assign(:keys, [
      stub_model(Key,
        :Company => "Company",
        :Description => "MyText",
        :Number => 1
      ),
      stub_model(Key,
        :Company => "Company",
        :Description => "MyText",
        :Number => 1
      )
    ])
  end

  it "renders a list of keys" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
