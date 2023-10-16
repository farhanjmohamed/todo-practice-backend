class TodosController < ApplicationController
  def index
    todos = Todo.all
    render json: todos.as_json
  end

  def create
    
    todo = Todo.new(
    name: params[:name],
    note: params[:note],
    status: params[:status],
    date: params[:date]
    )

    if todo.save 
      render json: todo.as_json
    else
      render json: {errors: todo.errors.full_messages}, status: 422
    end
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render json: todo.as_json
  end

  def update

    id = params[:id]
    todo = Todo.find(id)

    todo.update(
      name: params[:name] || todo.name,
      note: params[:note] || todo.note,
      status: params[:status] || todo.status,
      date: params[:date] || todo.date
    )

    if todo.save 
      render json: todo.as_json
    else
      render json: {errors: todo.errors.full_messages}, status: 422
    end
    
  end

  def destroy
    id = params[:id]

    todo = Todo.find(id)

    todo.destroy

    render json: { message: "Todo successfully deleted!" }
  end
end
