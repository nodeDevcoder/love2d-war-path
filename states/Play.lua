Play = Class{}


function Play:init()

    self.bgR, self.bgG, self.bgB = math.random(255), math.random(255), math.random(255)

end


function Play:update(dt)
    if self.ct_time and self.ct_time > 0 then
        self.ct_time = self.ct_time - dt
    elseif not(self.ct_time) then
        self.ct_time = 3
    end

    if self.ct_time > 0 then
        self.ct = true
    else
        self.ct = false
    end

    
end

function Play:keypressed(key)

end

function Play:render()
    love.graphics.setBackgroundColor(self.bgR / 255, self.bgG / 255, self.bgB / 255)
    if self.ct and tonumber(self.ct_time) then
        print(self.ct_time)
        love.graphics.setColor((255 - self.bgR) / 255, (255 - self.bgG) / 255, (255 - self.bgB) / 255)
        love.graphics.printf(tostring(math.floor(self.ct_time) + 1), 0, 300, WINDOW_WIDTH, 'center')
    end
end