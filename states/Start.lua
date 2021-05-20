Start = Class{}

function Start:init()
    
end


function Start:update(dt)

end

function Start:keypressed(key)
    if key == '2' or key == '4' then
        num_pl = key
    elseif key == 'Enter' then 
        if not(num_pl == nil) and num_pl == 2 or num_pl == 4 then
            state = 'Play'
        end 
    end
end

function Start:render()
    love.graphics.setBackgroundColor(204 / 255, 98 / 255, 22 / 255)
    love.graphics.setFont(fonts.lovelo.large)
    love.graphics.printf('Welcome to War Path!', 0, 100, WINDOW_WIDTH, 'center')

    love.graphics.setLineWidth(10)
    love.graphics.line(-5, 150, 150, -5) -- top left band1 (-5 to cover empty sides)
    love.graphics.line(-5, 200, 200, -5) -- top left band2 (-5 to cover empty sides)
    -- love.graphics.setBackgroundColor(1, 1, 1)
end