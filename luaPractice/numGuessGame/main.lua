local welcome = require('welcome')
local mainView = require('mainView')

welcome.exec()

-- Create Secret Number
local secretNum = math.random(1,10)

-- Game Logic
Game = {}

Game.triesLeft = 3
Game.attempts = 0
Game.isGameOver = false

function Game.decrementTriesLeft()
    Game.triesLeft = Game.triesLeft - 1
end

function Game.incrementAttempts()
    Game.attempts = Game.attempts + 1
end

function Game.toggleIsGameOver()
    Game.isGameOver = not Game.isGameOver
end

