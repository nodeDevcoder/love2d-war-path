
Class = require 'class'

require 'states/Start'


WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

function love.load()   
    math.randomseed(os.time())
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setTitle('My Game')
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT)
    
    Start()
end


function love.update(dt)

end

function love.draw()
    -- love.graphics.setBackgroundColor(1, 1, 1)
    -- local width, height = love.graphics.getDimensions()
    -- love.graphics.setScissor(0, 0, width / 2, height)

end