Type.registerNamespace("Sys.Extended.UI.HTMLEditor.ToolbarButton");Sys.Extended.UI.HTMLEditor.ToolbarButton.RemoveAlignment=function(a){Sys.Extended.UI.HTMLEditor.ToolbarButton.RemoveAlignment.initializeBase(this,[a])};Sys.Extended.UI.HTMLEditor.ToolbarButton.RemoveAlignment.prototype={checkState:function(){return!Sys.Extended.UI.HTMLEditor.ToolbarButton.RemoveAlignment.callBaseMethod(this,"checkState")?false:this._designPanel._textAlignState(null)},callMethod:function(){if(!Sys.Extended.UI.HTMLEditor.ToolbarButton.RemoveAlignment.callBaseMethod(this,"callMethod"))return false;var a=this._designPanel,b=this._editPanel;a._saveContent();a.MSIE_justify("left",true);a.onContentChanged();setTimeout(function(){b.updateToolbar()},0)}};Sys.Extended.UI.HTMLEditor.ToolbarButton.RemoveAlignment.registerClass("Sys.Extended.UI.HTMLEditor.ToolbarButton.RemoveAlignment",Sys.Extended.UI.HTMLEditor.ToolbarButton.EditorToggleButton);