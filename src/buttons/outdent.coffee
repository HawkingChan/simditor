
class OutdentButton extends Button

  name: 'outdent'

  icon: 'outdent'

  _init: ->
    hotkey = if @editor.opts.tabIndent == false then '' else ' (Shift + Tab)'
    @title = @_t(@name) + hotkey
    super()

  _status: ->

  command: ->
    @editor.indentation.indent(true)
    #toFixed 修正缩进无法触发valuechanged事件 by ChanKai
    @editor.trigger 'valuechanged'


Simditor.Toolbar.addButton OutdentButton
