World = Class{}

function World:init(players)

    self.canvas = love.graphics.newCanvas()

    self.width = 7000
    self.height = 3000

    self.bgR = math.random(255)
    self.bgG = math.random(255)
    self.bgB = math.random(255)

    self.tiles = tileset[math.random(#tileset)].tile -- sets a random BOTTOM
    self.toppers = toppers[math.random(#toppers)].topper -- sets a random TOPPER

    self.players = players

    generateTiles(self.width, WINDOW_HEIGHT)
end

function World:update(dt)
 
end

function World:render()
    love.graphics.setBackgroundColor(1, 1, 1)
    love.graphics.setColor(1, 1, 1)

    love.graphics.translate(-128, -100)
    love.graphics.scale(1.2)

    for i = 1, #players do 
        love.graphics.setCanvas(self.canvas)
        love.graphics.clear()
            love.graphics.push()
                love.graphics.setBackgroundColor(1, 1, 1)
                love.graphics.translate(-math.floor(players[i].cameraScroll.x), -math.floor(players[i].cameraScroll.y))
                for x = 1, #tiles do 
                    -- smnum = #tiles[x] -- Largest number for placing toppers on
                    for y = 1, #tiles[x] do 
                        if tiles[x][y].id == GROUND then
                            -- if y < smnum then smnum = y end
                            love.graphics.draw(atlas, self.tiles.quad, (x - 1) * self.tiles.width, (y - 1) * self.tiles.height)
                        end
                    end
                    -- love.graphics.draw(atlas2, self.toppers.quad, (x - 1) * self.tiles.width, (smnum - 1) * self.tiles.height)
                end 
            love.graphics.pop()
        love.graphics.setCanvas()
        love.graphics.draw(self.canvas, i == 2 and WINDOW_WIDTH / 2 or 0)
        if i == 1 then
            love.graphics.rectangle('fill', WINDOW_WIDTH / 2, 0, WINDOW_WIDTH / 2, WINDOW_HEIGHT)
        end
    end    

    love.graphics.setColor(0, 0, 0)
    love.graphics.line(WINDOW_WIDTH / 2 - 7, 0, WINDOW_WIDTH / 2 - 7, WINDOW_HEIGHT)
    love.graphics.setColor(1, 1, 1)
end