World = Class{}

function World:init(players)

    self.width = 10000
    self.height = 5000

    self.bgR = math.random(255)
    self.bgG = math.random(255)
    self.bgB = math.random(255)

    self.players = players

    generateTiles(self.width, tile:getHeight() * 5)

    cameraScroll = 0
end

function World:update(dt)
    if love.keyboard.isDown('right') then
        cameraScroll = cameraScroll + 40 * dt
    elseif love.keyboard.isDown('left') then
        cameraScroll = cameraScroll - 40 * dt
    end
end

function World:render()
    love.graphics.setBackgroundColor(1, 1, 1)
    love.graphics.setColor(1, 1, 1)

    love.graphics.translate(-math.floor(cameraScroll), 0)


    for y = 1, #tiles do 
        for x = 1, #tiles[y] do 
            love.graphics.draw(tile, (x - 1) * tile:getWidth() * 3 / 2, WINDOW_HEIGHT - y * tile:getHeight() * 3, 0, 3)
        end
    end 

    
end