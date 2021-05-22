Player = Class{}

function Player:init(num)

    
    self.num = tonumber(num)
    self.image = love.graphics.newImage('media/sprites/folder-'..tostring(num)..'/pl'..tostring(num)..'.png')

    self.x = self.num - 1 * 7000
    self.y = 48

    self.dx = 0
    self.dy = 0

    self.cameraScroll = {
        x = 7000 - WINDOW_WIDTH / 2,
        y = 0
    }

    self.splitScreen = {
        x = self.num % 2 == 0 and 0 or WINDOW_WIDTH / 2 + 6,
        y = 0,
        w = WINDOW_WIDTH / 2 - 3,
        h = WINDOW_HEIGHT
    }   
end

function Player:update(dt)
    if love.keyboard.isDown(player_keys[self.num].right) == true then
        self.cameraScroll.x = self.cameraScroll.x + 50 * dt
    elseif love.keyboard.isDown(player_keys[self.num].left) == true then
        self.cameraScroll.x = self.cameraScroll.x - 50 * dt
    -- elseif love.keyboard.isDown(player_keys[self.num].up) == true then
    --     self.cameraScroll.y = self.cameraScroll.y - 50 * dt
    -- elseif love.keyboard.isDown(player_keys[self.num].down) == true then
    --     self.cameraScroll.y = self.cameraScroll.y + 50 * dt
    end
end

function Player:render()
    love.graphics.setBackgroundColor(1, 1, 1)
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(self.image, 200 + 100 * self.num, 500, _, 5, 5)
end