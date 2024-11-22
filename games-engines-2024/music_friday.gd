extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_button_down() -> void:
	$AudioStreamPlayer2D.play()
	pass # Replace with function body.



# Connects the function of HSlider to this function and use values to change things of the audio
# Can use the audio busses to change effect e.g. pitch, reverb and delay
func _on_h_slider_value_changed(value: float) -> void:
	print(value)
	$AudioStreamPlayer2D.pitch_scale = value
	
	pass # Replace with function body.


# When audio finished, play again
func _on_audio_stream_player_2d_finished() -> void:
	$AudioStreamPlayer2D.play()
	pass # Replace with function body.
