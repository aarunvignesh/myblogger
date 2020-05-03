require_relative '../../../controllers/profile_controller'
require_relative '../app.spec'

class ProfileControllerTest < AppTest
  def app
    Shivin::ProfileController
  end

  def test_for_root
    get "/"
    assert 200, last_response.status
  end

end