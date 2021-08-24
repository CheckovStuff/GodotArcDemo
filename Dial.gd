extends Control

var center = Vector2(ProjectSettings.get_setting("display/window/size/width") / 2.0,
					ProjectSettings.get_setting("display/window/size/height") / 2.0)
var speed = 5.0
var angle
var maxHealth
var target_angle

func _ready():
	anchor_left = 0.5
	anchor_right = 0.5
	anchor_top = 0.5
	anchor_bottom = 0.5
	maxHealth = get_parent().maxHealth
	angle = (get_parent().currentHealth / maxHealth) * 6.28
	target_angle = angle

func _process(delta):
	target_angle = (get_parent().currentHealth / maxHealth) * 6.28
#	if(target_angle > 6.28):
#		target_angle %= 6.28
	angle += (target_angle - angle) * speed * delta
	get_parent().set_label()
	update()

func _draw():
	draw_arc(center, 100.0, 0.0, angle, 32, Color(1.0, 1.0, 1.0))
