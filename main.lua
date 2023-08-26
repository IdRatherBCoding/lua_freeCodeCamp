-- this is a comment

--[[ this is a multi line comment
     make sure that there is no space between the dashes and the []
]]



-- Print Command
print("Hello World")

-- Adding comma in print command will add a tab between text
print("Hello" , "World")

-- Adding a ".." between 2 string statements in a print command will concat the text
print("Hello" .. "World")


--      VARIABLES AND DATA TYPES    

--[[ MAIN DATA TYPES
----------------------
    nil (same as null)
    numbers
    strings (Single or Double quotes)
    boolean (true/false)
    tables (same as arrays)

    VARIABLES
    -----------

    This is how to define a local variable.  Local variables are not accessible outside of the file it is in, it's scope.
    You can create global variables that can be used outside of a file

    local x = nil
    local x
    x = nil

    Global Variables have no prefix such as local.  Simply type a name ie.
    ans
    print(ans) / nil

    Best practice says to prefix global varialbe names with _G and add a dot so that there is only one i think ie.

    _G.newGlobalVariable = 'Global Variable'
]]

--Basic math
local x = 3
print(3+x)

_G.newGlobalVariable = 'Global Variable'
print(_G.newGlobalVariable)

-- Multi line strings processed as it looks ie.

local multiString = [[
    This is a multi line string
    that process the characters as they
    appear in the IDE.  Similar to `` in 
    JavaScript
]]

print(multiString)

-- Assigning multi variables at once

local one, two, three = "One", 2, false

print(one, two, three)

print("One: " .. one, "Two: " .. two, "Three: ", three)


-- STRINGS

local str = "str"

-- use # to get length of string
print("Length of str: " .. #str )
print("Length of word HELLO: " .. #"HELLO")

-- convert number to string
print(type(x))
print(type(tostring(x)))