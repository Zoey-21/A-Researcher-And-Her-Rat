extends StaticBody2D


func _physics_process(delta):
	$CollisionShape2D.disabled = false
	$Sprite.visible = true

func run(test):
	if test:
		$CollisionShape2D.disabled = true
		$Sprite.visible = false

