Zesty.Views.Entries ||= {}

class Zesty.Views.Entries.EntryView extends Backbone.View
  template: JST["backbone/templates/entries/entry"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
