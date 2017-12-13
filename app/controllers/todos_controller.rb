class TodosController < ApplicationController

  # GET /todos
  def index
    @todos = Todo.all
    json_response(@todos)
  end

  # GET /todos/:id
  def show
    @todo = Todo.find(params[:id])
    json_response(@todo)
  end

  private

  def todo_params
    params.permit(:title, :created_by)
  end
end
