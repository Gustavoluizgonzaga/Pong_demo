push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

--[[
    Executado quando o jogo comea pela primeira vez, apenas uma vez; usado para inicializar o jogo.
]]
function love.load()
    -- usado para prevenir o borramento do texto e do gráfico
    love.graphics.setDefaultFilter('nearest', 'nearest')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

--[[
    Chamado quando a tecla for pressionada, usado para capturar o input do jogador,
    ou para sair do jogo.
]]
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

--[[
    Usado para desenhar qualquer coisa na tela, independentemente de ter sido atualizado ou não.
]]
function love.draw()
    push:apply('start')

    love.graphics.printf('Hello Pong!', 0, VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, 'center')

    -- termina a renderização
    push:apply('end')
end
