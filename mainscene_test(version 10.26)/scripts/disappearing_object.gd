extends StaticBody2D


# 变量：用于检测玩家是否在范围内
var player_near = false

# 定义交互键
const INTERACT_KEY = "e"

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action("attack") and player_near:
		queue_free()
#func _on_body_exited(body: Node2D) -> void:
#func _on_Area2D_body_exited(body):
	#	player_near = false

# 每帧检测是否按下 E 键
#func _process(delta):
	#if player_near and Input.is_action_just_pressed(INTERACT_KEY):
		#destroy_object()

# 破坏物体的函数
#func destroy_object():
	#queue_free()  # 移除物体

# 连接信号
#func _ready():
	#$Area2D.connect("body_entered", self, "_on_Area2D_body_entered")
	#$Area2D.connect("body_exited", self, "_on_Area2D_body_exited")


func _on_area_2d_body_entered(body: Node2D) -> void:
	player_near = true
	print("press E to break the box")
	
