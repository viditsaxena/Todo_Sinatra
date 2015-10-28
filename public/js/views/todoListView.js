var app = app || {};

// Backbone List View... knows how to be on the screen  $el
app.TodoListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    this.$el.empty();
    var todoObject;
    var $view;
    var todosObjects = this.collection.models;
    for (var i = 0; i < todosObjects.length; i++) {
      todoObject = todosObjects[i];
      $view = new app.TodoView({model: todoObject});
      $view.render();
      this.$el.append( $view.$el );
    }
  }
});
