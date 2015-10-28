var app = app || {};

// Backbone Model... knows how to be a object
app.Todo = Backbone.Model.extend({
  defaults:{
    'message': 'tbd'
  }
});
