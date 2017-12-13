# helper method used in app/controllers/todos_controller.rb

module ExceptionHandler
  # provides teh more graceful 'included' method
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ message: e.message }, :upprocessable_entity)
    end
  end
end
