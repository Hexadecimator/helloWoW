print("HELLO WOW LUA YO OMG")

--message("YO DOG")
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

for i=1,5,1 do
    CameraZoomOut(10)
end

for i=1,5,1 do
    CameraZoomIn(10)
end

for i=1,5,1 do
    CameraZoomOut(10)
end

for i=1,5,1 do
    CameraZoomIn(10)
end

local function OnEvent(self, event, ...)
	print(event, ...)
    message(event)
end

local f = CreateFrame("Frame")
--f:RegisterEvent("CHAT_MSG_CHANNEL")
f:RegisterEvent("PLAYER_STARTED_MOVING")
f:RegisterEvent("PLAYER_STOPPED_MOVING")
f:SetScript("OnEvent", OnEvent)

local f = CreateFrame("Frame", "MainFrame", nil, nil, 1)
--local f = CreateFrame("Frame", nil)
f:SetPoint("CENTER")
f:SetSize(128,128)

f.tex = f:CreateTexture()
f.tex:SetAllPoints(f)
f.tex:SetTexture("interface/icons/inv_mushroom_11")


local function clickerino(s, b)
    print("Clicked With: " .. b) 
end

local btn = CreateFrame("Button", nil, UIParent, "UIPanelButtonTemplate")
btn:SetPoint("TOP")
btn:SetSize(100,40)
btn:SetText("Click Me")
btn:SetScript("OnClick", 
        function(self, button) 
            print("Clicked With: " .. button)
        end)