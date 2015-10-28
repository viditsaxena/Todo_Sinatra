var app = app || {};

// Backbone Collection... knows how to manages... a bunch of something
app.TodoCollection = Backbone.Collection.extend({
  model: app.Todo,
  url: '/api/todos'
});
