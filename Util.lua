------------------ Media Imports ------------------------
fonts = {
    bangers = {
        large = love.graphics.newFont('media/Bangers-Regular.ttf', 68),
        medium = love.graphics.newFont('media/Bangers-Regular.ttf', 48),
        small = love.graphics.newFont('media/Bangers-Regular.ttf', 28)
    },
    lovelo = {
        large = love.graphics.newFont('media/Lovelo_Black.otf', 68),
        medium = love.graphics.newFont('media/Lovelo_Black.otf', 48),
        small = love.graphics.newFont('media/Lovelo_Black.otf', 28)
    }
}
---------------------------------------------------------
states = {}

states['Start'] = Start()
states['Play'] = Play()
states['End'] = End()

state = states['Start']

num_pl = nil

players = {}

player_keys = {}

player_keys[1] = { up = 'w', down = 's', left = 'a', right = 'd' }
player_keys[2] = { up = 'up', down = 'down', left = 'left', right = 'right' }