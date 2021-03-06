extends TextureRect

signal all_tags_found
signal tag_found(tag)


var tags := [
	"hello",
	"world",
	"this",
	"is",
	"a",
	"test"
]


func _on_ChatBox_tag_input(tag):
	if tags.find(tag) != -1:
		tags.erase(tag)
		emit_signal("tag_found", tag)
		if tags.size() == 0:
			emit_signal("all_tags_found")
