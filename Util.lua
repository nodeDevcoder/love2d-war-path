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

tile = love.graphics.newImage('media/sprites/tile.png')

---------------------------------------------------------
states = {}

state = states['Start']

num_pl = nil

players = {}

player_keys = {}


player_keys[1] = { up = 'w', down = 's', left = 'a', right = 'd' }
player_keys[2] = { up = 'up', down = 'down', left = 'left', right = 'right' }

tiles = {}

function generateTiles(w, h) -- width of world, height of tiles total (function to get number of tiles)
    for y = 1, h / tile:getHeight() do
        table.insert(tiles, {})
        for x = 1, w / (tile:getWidth() * 3 / 2) do
            table.insert(tiles[y], { type = 0 })
        end
    end
end