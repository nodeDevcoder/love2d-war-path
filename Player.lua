Player = Class{}

function Player:init(num)
    self.num = num
    self.image = love.graphics.newImage('media/sprites/folder-'..tostring(num)..'/pl'..tostring(num)..'.png')
end

function Player:update(dt)

end

function Player:render()
    love.graphics.setBackgroundColor(1, 1, 1)
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(self.image, 200 + 100 * self.num, 500, _, 5, 5)
end