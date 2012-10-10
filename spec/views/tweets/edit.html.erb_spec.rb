require 'spec_helper'

describe "tweets/edit" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :text => "MyString",
      :id_str => "MyString",
      :tuser_id_str => "MyString",
      :tuser_screen_name => "MyString"
    ))
  end

  it "renders the edit tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tweets_path(@tweet), :method => "post" do
      assert_select "input#tweet_text", :name => "tweet[text]"
      assert_select "input#tweet_id_str", :name => "tweet[id_str]"
      assert_select "input#tweet_tuser_id_str", :name => "tweet[tuser_id_str]"
      assert_select "input#tweet_tuser_screen_name", :name => "tweet[tuser_screen_name]"
    end
  end
end
