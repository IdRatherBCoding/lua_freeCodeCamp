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

-- Upper / Lower Case / Lenth

print(string.upper(str))
print(string.lower(str))
print(string.len(str))

-- MATH
-- All of the typical operators are the same so I am leaving them out

print(math.min(1,2,3,4))
print(math.max(1,2,3,4))

print(math.ceil(20.9))
print(math.ceil(20.1))

print(math.floor(20.1))
print(math.floor(20.1))

print("random #: " .. math.random())

print("Random # from 1-10: " .. math.random(10))

-- IF Statements

if true then
    print("TRUE")
end

-- OTHER COMPARISON OPERATORS
-- and, or, not, >, <, <=, >= ==, ~=(same as != in JS)


-- If, Elseif, Else, Nested If Statements

local age = 18
local birthday = true

if age >= 18 then
    print("You may enter")

    if birthday then
        print("Happy Birthday!")
    end
elseif age < 13 then
    print("You are bareley a teenager")
else
    print("You are not welcome, be gone")
end

-- The following is similar to ternary expression in JS
local age = 19
local name = age > 18 and "Mike" or "Jeff"
print(name)
local age = 14
local name = age > 18 and "Mike" or "Jeff"
print(name)

-- Loops

-- For Loop
for i = 1, 10 do
    print(i)
end

-- For Loop with 2 Steps
for i = 1, 10, 2 do
    print(i)
end

-- Can reverse order of loop with negative #'s
for i = 10, 1, -2 do
    print(i)
end


-- While loop

local count = 0
while true do 
    count = count + 1
    print("Luke")

    if count > 10 then
        break
    end
end

local count = 0
while count < 10 do 
    count = count + 1
    print("Anakin")
end


-- Repeat loop runs at least once, like a do-while loop

local count = 0
repeat
    count = count + 1
    print("Han")
until count < 10

-- User Input

print("What is your name?")
local ans = io.read()
print("Your name is: " .. ans)

-- Get input on same line as output
io.write("What is your name? ")
local ans = io.read()
print("Your name is " .. ans)

-- Tables are similar to lists and arrays

local tbl = {"This", 2, 9.9, true, {"ok", "cool"}}
print(tbl) -- Prints memory address of table

-- Loop through table

for i = 1, #tbl do
    print(tbl[i])

    if type(tbl[i]) == "table" then
        for j = 1, #tbl[i] do
            print(tbl[i][j])
        end
    end
end

-- Insert into table
table.insert(tbl, "New Insertion")
for i = 1, #tbl do
    print(tbl[i])

    if type(tbl[i]) == "table" then
        for j = 1, #tbl[i] do
            print(tbl[i][j] .. "\n")
        end
    end
end

-- Insert into table by position #
table.insert(tbl, 2, "New Insertion 2")

for i = 1, #tbl do
    print(tbl[i])

    if type(tbl[i]) == "table" then
        for j = 1, #tbl[i] do
            print(tbl[i][j])
        end
    end
end

-- Can loop and add argument for index as well as value by using the keyword pairs

for index, value in pairs(tbl) do
    print(index, value)
end


-- Multi Dimensional Tables

local multi = {
    {1,2,3},
    {4,5,6},
    {7,8,9}
}

print(multi) -- prints memory location

-- nested for loop
for i = 1, #multi do
    for j = 1, #multi[i] do
        print(multi[i][j])
    end
end

-- Join table items to text with table.concat
local joinedTbl = table.concat(multi[1], "")
print(joinedTbl, type(joinedTbl))

-- Can also get value from table with keyword index like JS ie.
local newTbl = {
    name = "Mike",
    age = 21
}

print(newTbl["name"])
print(newTbl["age"])


-- FUNCTIONS

local function sayHello(name)
    -- add default value if no argument is passed
    local name = name or "Han"
    print("Hello " .. name .. "!")
end

sayHello("Luke")
sayHello()


-- Working with files

-- Create file with io.output
io.output("newFile.lua")
io.close()

-- Note if file exists it will be overwritten with no content

-- Write to file with io.write and close with io.close

io.output("testFile")
io.write("Hello World")
io.close()

-- Read file

-- io.input("testFile")

-- local fileData = io.read("*all") -- to read all contents

-- print("File Data: ", fileData)

-- Better way to open / read / write files

local file = io.open("myFile.txt", "w")

if file ~= nil then
    file:write("This is myFile.txt")
    file:close()
else
    print("Could not open file")
end

local file = io.open("myFile.txt", "r")

if file ~= nil then
    print(file:read("*a"))
    file:close()
else
    print("Could not open file")
end

-- Append a file

print("Enter text to append to myFile.txt")
local newText = io.read()
print("USer info: ", newText)

local file = io.open("myFile.txt", "a")

if file ~= nil then
    file:write("\n" .. newText)
    file:close()
else
    print("Could not open file")
end

local mod = require("custom")

mod.sayHello("Matt")