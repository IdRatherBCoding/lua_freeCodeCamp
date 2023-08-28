local function Pet(name)

    local age = 10 -- Private Property, since it's not being returned it won't be accessible

    return {
        name = name or "Charlie",
        status = "hungry",
        
        speak = function()
            print("meaw")
        end,

        feed = function(self)
            print("eating", self.name) -- self is referenced through a : instead of a .
            self:speak()
        end

    }
end



-- inheritance

local function Dog(name, breed)
    local dog = Pet(name)

    dog.breed = breed or "doberman"
    dog.loyalty = 0

    return dog
end



local cat = Pet()
local dog = Pet("Jack", "Poodle")

cat.speak()
dog:feed()
