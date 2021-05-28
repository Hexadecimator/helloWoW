print("HELLO WOW LUA YO OMG")

message("YO DOG")
--message("MULTI MESSAGE TIME")
--message("SUPER MESSAGE TIME")
--message("DUPER MESSAGE TIME")

for i = 1,3,1 do
    message("DUPER MESSAGE TIME " .. i)
end

function test()
    return "arg1", 2.2, true
end

string1, number1, bool = test()

print (string1)
print(number1)
print(bool)

function printTheThings(...)
    for i=1,#{...},1 do
        print( ((select(i,...)) ))
    end
end

printTheThings("yes", "no", "maybe", 1, "interesting", "stringly", "argument", "strings")

printTheThings("hello", "wow", "toc", "addon")