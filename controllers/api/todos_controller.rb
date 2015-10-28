class TodosController < ApiController

  def current_api_user!
    if env['HTTP_TOKEN']
      User.find_by({token: env['HTTP_TOKEN']})
    else
      halt 401
    end

  end

  def todoParams
    @todo_params = @todo_params || JSON.parse(request.body.read.to_s)
  end

  get '/' do
    content_type :json
    current_api_user!.todos.to_json
  end

  post '/' do
    content_type :json
    todo = current_api_user!.todos.create(params[:todo] || todoParams)
    todo.to_json

  end

  delete '/:id' do
    content_type :json
    current_api_user!.todos.destroy(params[:id])
    halt 202
  end
end
