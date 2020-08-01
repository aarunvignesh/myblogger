require_relative './../../../services/contentService'
require_relative '../app.spec'

class TestContentService < AppTest

  def test_git_con
    instance = Shivin::ContentService.new
    assert instance.host, "https://raw.githubusercontent.com"
  end

  def test_article_response_from_git
    instance = Shivin::ContentService.new
    response = instance.fetch_blog_article("solid-principles")
    assert response["head"]["title"], "Solid Principles"
    assert_raises BlogNotFound do
      instance.fetch_blog_article("solid-principles1")
    end
  end

  def test_blog_home_response_
    instance = Shivin::ContentService.new
    response = instance.fetch_blog_home_page
    assert response["page_title"], "Blogs"
  end

end