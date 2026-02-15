WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

--[[
    Executado quando o jogo  inicia pela primeira vez, apenas uma vez; usado para inicializar o jogo.
]]
function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

--[[
    Chamado após a atualização por LÖVE2D, usado para desenhar qualquer coisa na tela, independentemente de ter sido atualizado ou não.
]]
function love.draw()
    love.graphics.printf(
        'Hello Pong!',          -- text to render
        0,                      -- starting X (0 since we're going to center it based on width)
        WINDOW_HEIGHT / 2 - 6,  -- starting Y (halfway down the screen)
        WINDOW_WIDTH,           -- number of pixels to center within (the entire screen here)
        'center')               -- alignment mode, can be 'center', 'left', or 'right'
end
