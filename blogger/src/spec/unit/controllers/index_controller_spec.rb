require_relative './../app.spec'
require_relative './../../../controllers/index_controller'

class IndexControllerTest < AppTest
  def app
    Shivin::IndexController
  end

  def test_root_path
    get '/'
    assert 200 , last_response.status
  end

  def test_not_found
    get '/not-found'
    assert 200 , last_response.status
  end
end