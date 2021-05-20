
Class = require 'class'

require 'states/Start'
require 'states/Play'
require 'states/End'

require 'Util'

require 'Player'
require 'World'

state = 'Start'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

function love.load()   
    math.randomseed(os.time())
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setTitle('My Game')
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT)
end


function love.update(dt)
    print(states[state])

end

function love.draw()
    -- love.graphics.setBackgroundColor(1, 1, 1)
    -- local width, height = love.graphics.getDimensions()
    -- love.graphics.setScissor(0, 0, width / 2, height)

end