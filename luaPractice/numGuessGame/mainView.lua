local GREEN  = "\27[32m"

MainView = {}

function MainView.showText(triesLeft)
    local tries =  "tries"

    if(triesLeft > 1) then
        tries = "tries"
    else
        tries = "try"
    end

    local text = "I am thinking of a number between 1-10.  You have " .. triesLeft ..  " " .. tries .. " to guess it right.  Guess wisely!"
    return text
end

return MainView