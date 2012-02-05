Zesty.Views.Entries ||= {}

class Zesty.Views.Entries.NewView extends Backbone.View
  template: JST["backbone/templates/entries/new"]

  events:
    "submit #new-entry": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (entry) =>
        @model = entry
        window.location.hash = "/#{@model.id}"

      error: (entry, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
