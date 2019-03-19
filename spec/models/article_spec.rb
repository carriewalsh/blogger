require "rails_helper"

describe Article, type: :model do
  describe "validations" do
    # binding.binding.pry
    # article_1 = Article.create!(title: "Title 1", body: "Body 1")
    # article_2 = Article.create!(title: "Title 2", body: "Body 2")
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:body)}
  end
end
