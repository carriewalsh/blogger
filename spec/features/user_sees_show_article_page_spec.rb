require "rails_helper"

describe "user sees specific article", type: :feature do
  describe "they visit /articles/:id" do
    it "displays the specific article" do
      article_1 = Article.create!(title: "Title 1", body: "Body 1")
      article_2 = Article.create!(title: "Title 2", body: "Body 2")
      visit "/articles"
      click_link "Title 1"
      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
    end
  end
end
