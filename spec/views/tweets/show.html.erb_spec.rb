require 'spec_helper'

describe "tweets/show" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :text => "Text",
      :id_str => "Id Str",
      :tuser_id_str => "Tuser Id Str",
      :tuser_screen_name => "Tuser Screen Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Text/)
    rendered.should match(/Id Str/)
    rendered.should match(/Tuser Id Str/)
    rendered.should match(/Tuser Screen Name/)
  end
end
