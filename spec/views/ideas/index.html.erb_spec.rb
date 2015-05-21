require 'rails_helper'

RSpec.describe "ideas/index", type: :view do
  before(:each) do
    assign(:ideas, [
      Idea.create!(
        :title => "Title",
        :body => "Body"
      ),
      Idea.create!(
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  it "renders a list of ideas" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
