require 'rails_helper'

RSpec.describe "ideas/index", type: :view do
  before(:each) do
    assign(:ideas, [
      Idea.create!(
        :title => "Title",
        :body => "Body",
        :quality => 1
      ),
      Idea.create!(
        :title => "Title",
        :body => "Body",
        :quality => 1
      )
    ])
  end

  it "renders a list of ideas" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
