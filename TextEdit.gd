extends TextEdit
func _ready():
	for child in get_children():
		if child is VScrollBar:
			remove_child(child)
		elif child is HScrollBar:
			remove_child(child)
			
			
func _on_TextEdit_text_changed():
	call_deferred("_hide_scrollbar")
  
func _hide_scrollbar():
	for child in get_children():
		if child is VScrollBar:
			child.visible = false
		elif child is HScrollBar:
			child.visible = false 
