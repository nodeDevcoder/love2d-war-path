
states = {}

states['Start'] = Start()
states['Play'] = Play()
states['End'] = End()

state = states['Start']

players = {}

player_keys = {}

player_keys[1] = { up = 'w', down = 's', left = 'a', right = 'd' }
player_keys[2] = { up = 'up', down = 'down', left = 'left', right = 'right' }