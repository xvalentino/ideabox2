require 'rails_helper'

RSpec.describe "ideas/edit", type: :view do
  before(:each) do
    @idea = assign(:idea, Idea.create!(
      :title => "MyString",
      :body => "MyString",
      :quality => 1
    ))
  end

  it "renders the edit idea form" do
    render

    assert_select "form[action=?][method=?]", idea_path(@idea), "post" do

      assert_select "input#idea_title[name=?]", "idea[title]"

      assert_select "input#idea_body[name=?]", "idea[body]"

      assert_select "input#idea_quality[name=?]", "idea[quality]"
    end
  end
end
