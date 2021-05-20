
Class = require 'class'

require 'states/Start'
require 'states/Play'
require 'states/End'

require 'Util'

require 'World'
require 'Player'

state = 'Start'

WINDOW_WIDTH = 0
WINDOW_HEIGHT = 0

function love.load()   
    love.window.setFullscreen(true)
    math.randomseed(os.time())
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setTitle('War Path')

    WINDOW_WIDTH, WINDOW_HEIGHT = love.graphics.getDimensions()
end


function love.update(dt)

    states[state]:update(dt)

end

function love.keypressed(key) 
    states[state]:keypressed(key)
end

function love.draw()

    states[state]:render()

    -- love.graphics.setBackgroundColor(1, 1, 1)
    -- local width, height = love.graphics.getDimensions()
    -- love.graphics.setScissor(0, 0, width / 2, height)

end