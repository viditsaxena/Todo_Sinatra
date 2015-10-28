console.log ("Fully Loaded");

var token = $('#api-token').val();
$.ajaxSetup ({
  headers:{
    "accept": "application/json",
    "token": token
  }
});
var app = app || {};

app.todos = new app.TodoCollection();

app.todosPainter = new app.TodoListView({
  collection: app.todos,
  el: $('#all-the-todos')
});

app.todos.fetch();

$('form.create-todo').on('submit', function(e){
  e.preventDefault();
  var newMessage = $(this).find("#my-message").val();
  app.todos.create( {message: newMessage} );
});
