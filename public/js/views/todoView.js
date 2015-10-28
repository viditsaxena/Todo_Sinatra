var app = app || {};

// Backbone Model View... knows how to be on the screen  $el
app.TodoView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
  },
  tagName: 'div',
  className: 'todo',
  template: _.template(  $('#todo-template').html() ),
  render: function(){
    this.$el.empty();
    var html = this.template( this.model.toJSON() );
    var $html = $(html);
    this.$el.append( $html );
  },
  events: {
    'click button.remove': 'removeTodo'
  },
  removeTodo: function(){
    this.model.destroy();
    this.$el.remove();
  }
});
