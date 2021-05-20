Start = Class{}

function Start:init()
    
end


function Start:update(dt)

end

function Start:keypressed(key)
    if key == '2' or key == '4' then
        num_pl = key
    end
end

function Start:render()
    love.graphics.setBackgroundColor(204 / 255, 98 / 255, 22 / 255)
end