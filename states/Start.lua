Start = Class{}

function Start:init()
    
end


function Start:update(dt)

end

function Start:keypressed(key)
    if key == '2' or key == '4' then
        num_pl = key
    elseif key == 'return' then 
        if not(num_pl == nil) and num_pl == '2' or num_pl == '4' then
            states['Play'] = Play(num_pl)
            state = 'Play'
        end 
    end
end

function Start:render()
    love.graphics.setBackgroundColor(204 / 255, 98 / 255, 22 / 255)
    love.graphics.setFont(fonts.lovelo.large)
    love.graphics.printf('Welcome to War Path!', 0, 100, WINDOW_WIDTH, 'center')

    love.graphics.setLineWidth(20)
    love.graphics.line(-10, 150, 150, -10) -- top left band1 (-5 to cover empty sides)
    love.graphics.line(-10, 220, 220, -10) -- top left band2 (-5 to cover empty sides)
end