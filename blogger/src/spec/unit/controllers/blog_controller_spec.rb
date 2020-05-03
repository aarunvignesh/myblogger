require_relative '../../../controllers/blog_controller'
require_relative '../app.spec'

class ExampleTest < AppTest

  def app
    Shivin::BlogController
  end

  def test_get_root
    get '/'
    assert_equal 302, last_response.status
  end

  def test_get_article
    get '/solid-principles'
    assert_equal 200, last_response.status
  end
end