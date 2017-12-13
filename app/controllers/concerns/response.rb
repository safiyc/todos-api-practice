# helper method used in app/controllers/todos_controller.rb

module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
