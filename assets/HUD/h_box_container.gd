extends HBoxContainer

@onready var label_total_time: Label = $LabelTotalTime
@onready var label_total_score: Label = $LabelTotalScore

const TIME_HEADER = " Lived for:\n%s\n seconds"
const SCORE_HEADER = " Made:\n%s\n coins"

func _ready() -> void:
	label_total_time.text = TIME_HEADER % str(GameManager.time) 
	label_total_score.text = SCORE_HEADER % str(GameManager.score)
