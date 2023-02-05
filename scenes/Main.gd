extends Node2D

var rng = RandomNumberGenerator.new()

const END = 40;

func _ready():
	rng.randomize()
	print(mountain())
	# TODO: apply mountain to tilemap 

func holes(level, at, size = 1):
	return level.substr(0, at) + ' '.repeat(size) + level.substr(at+size)

func mountain_level(level):
	var level_string = '_'.repeat(20)
	if (level == END):
		level_string = ' '.repeat(9)+'_'.repeat(2)+' '.repeat(9)
	elif (level == END-1):
		level_string = ' '.repeat(8)+'_'.repeat(4)+' '.repeat(8)
	elif (level == END-2):
		level_string = ' '.repeat(7)+'_'.repeat(6)+' '.repeat(7)
	elif (level == END-3):
		level_string = ' '.repeat(6)+'_'.repeat(8)+' '.repeat(6)
	elif (level == END-4):
		level_string = ' '.repeat(5)+'_'.repeat(10)+' '.repeat(5)
	elif (level == END-5):
		level_string = ' '.repeat(4)+'_'.repeat(12)+' '.repeat(4)
	elif (level == END-6):
		level_string = ' '.repeat(3)+'_'.repeat(14)+' '.repeat(3)
	elif (level == END-7):
		level_string = ' '.repeat(2)+'_'.repeat(16)+' '.repeat(2)
	elif (level == END-8):
		level_string = ' '.repeat(1)+'_'.repeat(7)		+' '.repeat(4)+'_'.repeat(7)		+' '.repeat(1)
	elif (level > 30):
		level_string = holes(level_string, rng.randi_range(7, 20-7), 6)
		level_string = holes(level_string, rng.randi_range(7, 20-7), 6)
	elif (level > 26):
		level_string = holes(level_string, rng.randi_range(7, 20-7), 8)
	elif (level > 18):
		level_string = holes(level_string, rng.randi_range(7, 20-7), 7)
	elif (level > 14):
		level_string = holes(level_string, rng.randi_range(7, 20-7), 6)
	elif (level > 10):
		level_string = holes(level_string, rng.randi_range(7, 20-7), 5)
	elif (level > 8):
		level_string = holes(level_string, rng.randi_range(7, 20-7), 3)
	elif (level > 4):
		level_string = holes(level_string, rng.randi_range(7, 20-7), 2)
	elif (level > 1):
		level_string = holes(level_string, rng.randi_range(7, 20-7))
	if randi()%2 > 1:
		level_string = level_string.split('').reverse().join('')
	return level_string;

func mountain():
	var result = '';
	for i in END:
		result += mountain_level(END-i) + '\n';
	return result
