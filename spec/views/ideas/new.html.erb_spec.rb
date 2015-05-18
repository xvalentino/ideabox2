require 'rails_helper'

RSpec.describe "ideas/new", type: :view do
  before(:each) do
    assign(:idea, Idea.new(
      :title => "MyString",
      :body => "MyString",
      :quality => 1
    ))
  end

  it "renders new idea form" do
    render

    assert_select "form[action=?][method=?]", ideas_path, "post" do

      assert_select "input#idea_title[name=?]", "idea[title]"

      assert_select "input#idea_body[name=?]", "idea[body]"

      assert_select "input#idea_quality[name=?]", "idea[quality]"
    end
  end
end
