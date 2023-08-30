
local GREEN  = "\27[32m"

local GameStatsView = {}

GameStatsView.triesLeft = 0
GameStatsView.attempts = 0

function GameStatsView.updateStats(triesLeft, attempts)
    GameStatsView.triesLeft = triesLeft
    GameStatsView.attempts = attempts
end

function GameStatsView.returnGameStatsText()
    local text = GREEN .. "Tries Left: " .. GameStatsView.triesLeft .. "    " .. "Attempts: " .. GameStatsView.attempts
    return text
end

return GameStatsView