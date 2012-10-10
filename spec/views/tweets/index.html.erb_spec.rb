require 'spec_helper'

describe "tweets/index" do
  before(:each) do
    assign(:tweets, [
      stub_model(Tweet,
        :text => "Text",
        :id_str => "Id Str",
        :tuser_id_str => "Tuser Id Str",
        :tuser_screen_name => "Tuser Screen Name"
      ),
      stub_model(Tweet,
        :text => "Text",
        :id_str => "Id Str",
        :tuser_id_str => "Tuser Id Str",
        :tuser_screen_name => "Tuser Screen Name"
      )
    ])
  end

  it "renders a list of tweets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Id Str".to_s, :count => 2
    assert_select "tr>td", :text => "Tuser Id Str".to_s, :count => 2
    assert_select "tr>td", :text => "Tuser Screen Name".to_s, :count => 2
  end
end
