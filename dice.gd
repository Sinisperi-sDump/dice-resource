extends Resource
class_name Dice

## Amount of die
@export var count: int
## How many sides does the dice have
@export var sides: int
## Internal Roll class for the dice
class _Roll:
	var rolls: Array[int]
	var total: int
	var average: float

	func _init(new_rolls: Array[int] = []) -> void:
		rolls = new_rolls
		total = new_rolls.reduce(func(accum: int, number: int): return accum + number, 0)
		average = float(total) / rolls.size()

func _init(new_count: int = 0, new_sides: int = 0) -> void:
	count = new_count
	sides = new_sides

func roll() -> _Roll:
	if count <= 0 or sides <= 0: return _Roll.new()
	var rolls: Array[int] = []
	for _i in range(count):
		rolls.append(randi_range(1, sides))
	return _Roll.new(rolls)
