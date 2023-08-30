Welcome = {}




    Welcome.startTime = os.clock()
    Welcome.str = "a"
    Welcome.colorGreen = "\27[32m"
    Welcome.count = 1
    
    function Welcome.exec()
        while os.clock() - Welcome.startTime < #Welcome.str do
        -- Your code to be executed every second goes here
        -- print("Executing code...")
        
            print(Welcome.colorGreen .. Welcome.str:sub(Welcome.count,Welcome.count))
            Welcome.count = Welcome.count + 1
            
            
            Welcome.currentTime = os.clock()
            while os.clock() - Welcome.currentTime < 1 do
                -- Wait for 1 second
            end
        end
    end

return Welcome