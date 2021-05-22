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

-- tile = love.graphics.newImage('media/sprites/tile.png')
atlas = love.graphics.newImage('media/sprites/tiles.png')
atlas2 = love.graphics.newImage('media/sprites/toppers.png')

---------------------------------------------------------
SKY = 1
GROUND = 2

states = {}

state = states['Start']

num_pl = nil

players = {}

player_keys = {}

player_keys[1] = { up = 'w', down = 's', left = 'a', right = 'd' }
player_keys[2] = { up = 'up', down = 'down', left = 'left', right = 'right' }

tiles = {}
flags = {}
tileset = {}
toppers = {}

function pillarValid(x, h)
    for i = 1, 2 do 
        if flags[x - i].pillar == true then -- checks if pillar exists in previous 2 blocks
            coordX = x * 50 -- actual x coordinate, not tile amount
            if coordX > 7000 / 2 then -- right side of world
                if flags[x - i].pH <= h then -- preceding pillar is taller?
                    return false
                end
            elseif coordX < 7000 / 2 then -- left side of world
                if flags[x - i].pH >= h then -- preceding pillar is taller?
                    return false
                end
            end
        end
    end
    return true
end


function generateTileSets() 
    for x = 0, 6 - 1 do
        for y = 0, 10 - 1 do
            quad = love.graphics.newQuad(x * 80 + 15, y * 64 + 32, 32, 32, atlas:getDimensions())
            table.insert(tileset, { tile = { quad = quad, width = 32, height = 32 } })
        end
    end
end

function generateToppers() 
    for x = 0, 6 - 1 do
        for y = 0, 18 - 1 do
            quad = love.graphics.newQuad(x * 80 + 11, y * 65, 50, 7, atlas2:getDimensions())
            table.insert(toppers, { topper = { quad = quad, width = 50, height = 7 }})
        end
    end
end

function generateTiles(w, h) -- width of world, height of tiles total (function to get number of tiles)
    for x = 1, w / 32 do
        mkpillar = false -- reset mkpillar

        table.insert(tiles, {})
        table.insert(flags, {})

        pillar = x > 5 and x < 7000 - 5 and math.random(5) == 3 or false -- first five are level for both sides
        pillarHeight = math.random(4)

        if pillar == true and pillarValid(x, pillarHeight) then
            mkpillar = true
            flags[x].pillar = true
            flags[x].pH = pillarHeight
        end


        for y = 1, h / 32 do
            if mkpillar and h / 32 - y <= 5 + pillarHeight then
                table.insert(tiles[x], { id = GROUND })
            elseif h / 32 - y <= 5 then
                table.insert(tiles[x], { id = GROUND })
            else
                table.insert(tiles[x], { id = SKY })
            end
        end
    end
end