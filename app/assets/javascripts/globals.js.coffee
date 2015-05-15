class @Globals
  self = this

  @initialize_material_design: ->
    $.material.init()

  @init: ->
    self.initialize_material_design()

$ ->
  Globals.init()
