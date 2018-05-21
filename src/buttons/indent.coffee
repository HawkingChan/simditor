
class IndentButton extends Button

  name: 'indent'

  icon: 'indent'

  _init: ->
    hotkey = if @editor.opts.tabIndent == false then '' else ' (Tab)'
    @title = @_t(@name) + hotkey
    super()

  _status: ->

  command: ->
    @editor.indentation.indent()
    #toFixed 修正缩进无法触发valuechanged事件 by ChanKai
    @editor.trigger 'valuechanged'


Simditor.Toolbar.addButton IndentButton
