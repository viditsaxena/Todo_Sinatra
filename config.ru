require 'bundler'
Bundler.require()


#Models

require "./models/user"
require "./models/todo"

#helpers

require "./helpers/session_helper"

#Controllers

require "./controllers/application_controller"
require "./controllers/welcome_controller"
require "./controllers/users_controller"
require "./controllers/sessions_controller"
require "./controllers/api/api_controller"
require "./controllers//api/todos_controller"


#Routes

map ('/users') { run UsersController }
map ('/sessions')  { run SessionsController}
map ('/api/todos') { run TodosController }
map ('/') { run WelcomeController }
