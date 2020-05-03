require_relative './../../../services/contentService'
require_relative '../app.spec'

class TestContentService < AppTest

  def test_git_con
    instance = Shivin::ContentService.new
    assert instance.url, "https://raw.githubusercontent.com"
  end

  def test_article_response_from_git
    instance = Shivin::ContentService.new
    response = JSON.parse instance.fetch_blog_article("solid-principles").body
    assert response["head"]["title"], "Solid Principles"
  end

end