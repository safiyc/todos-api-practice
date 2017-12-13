# in 'rails-helper', need to change 'support' directory to autoload and include as a shared module for all request specs to use

module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end
end
