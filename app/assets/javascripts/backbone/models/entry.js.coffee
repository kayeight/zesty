class Zesty.Models.Entry extends Backbone.Model
  paramRoot: 'entry'

  defaults:
    title: null
    url: null

class Zesty.Collections.EntriesCollection extends Backbone.Collection
  model: Zesty.Models.Entry
  url: '/entries'
