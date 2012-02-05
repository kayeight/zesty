Zesty.Views.Entries ||= {}

class Zesty.Views.Entries.EditView extends Backbone.View
  template : JST["backbone/templates/entries/edit"]

  events :
    "submit #edit-entry" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (entry) =>
        @model = entry
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
