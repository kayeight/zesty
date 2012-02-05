Zesty.Views.Entries ||= {}

class Zesty.Views.Entries.IndexView extends Backbone.View
  template: JST["backbone/templates/entries/index"]

  initialize: () ->
    @options.entries.bind('reset', @addAll)

  addAll: () =>
    @options.entries.each(@addOne)

  addOne: (entry) =>
    view = new Zesty.Views.Entries.EntryView({model : entry})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(entries: @options.entries.toJSON() ))
    @addAll()

    return this
