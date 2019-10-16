--[[Skip to content

Please note that GitHub no longer supports your web browser.
We recommend upgrading to the latest Google Chrome or Firefox.
Ignore
Learn more
 games50 / pong
Sign up

Code  Issues 8  Pull requests 9  Security  Pulse
Dismiss
Join GitHub today
GitHub is home to over 40 million developers working together to host and review code, manage projects, and build software together.

Sign up
Branch: master 
Find file Copy path
pong/pong-0/main.lua

@dmalan dmalan avoids resizing issue altogether for now
b7e5fa0 Jan 23, 2018
2 contributors
@coltonoscopy @dmalan
48 lines (39 sloc)  1.36 KB
RawBlameHistory

]]

--[[
    GD50 2018
    Pong Remake
    pong-0
    "The Day-0 Update"
    -- Main Program --
    Author: Colton Ogden
    cogden@cs50.harvard.edu
    Originally programmed by Atari in 1972. Features two
    paddles, controlled by players, with the goal of getting
    the ball past your opponent's edge. First to 10 points wins.
    This version is built to more closely resemble the NES than
    the original Pong machines or the Atari 2600 in terms of
    resolution, though in widescreen (16:9) so it looks nicer on 
    modern systems.
]]

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

--[[
    Runs when the game first starts up, only once; used to initialize the game.
]]
function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

--[[
    Called after update by LÖVE2D, used to draw anything to the screen, updated or otherwise.
]]
function love.draw()
    love.graphics.printf(
        'Hello Pong!',          -- text to render
        0,                      -- starting X (0 since we're going to center it based on width)
        WINDOW_HEIGHT / 2 - 6,  -- starting Y (halfway down the screen)
        WINDOW_WIDTH,           -- number of pixels to center within (the entire screen here)
        'center')               -- alignment mode, can be 'center', 'left', or 'right'
end

