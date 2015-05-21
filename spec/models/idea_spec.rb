require 'rails_helper'

RSpec.describe Idea, type: :model do
  describe "Idea" do
    it "has a quality that defaults to swill" do
      idea_attributes = {title: "idea title", body: "idea body"}
      idea = Idea.new(idea_attributes)
      expect(idea.quality).to eq("swill")
    end
  end
end
