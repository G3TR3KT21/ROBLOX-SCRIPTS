local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DenDenZZZ/Kavo-UI-Library/main/Kavo.lua"))()

local Window = Library.CreateLib("TITLE HERE", "DarkTheme")

local Tab = Window:NewTab("Tab Name")

local Section = Tab:NewSection("Section Name")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)

Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

local oldList = {
  "2019",
  "2020"
}
local newList = {
  "2021",
  "2022"
}
local dropdown = Section:NewDropdown("Dropdown","Info", oldList, function()

end)
Section:NewButton("Update Dropdown", "Refreshes Dropdown", function()
  dropdown:Refresh(newList)
end)

local Tab = Window:NewTab("Creator")
local Section = Tab:NewSection("Mariposa780#5848")
local Section = Tab:NewSection("Please give credit if you make video")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Spawn Barrier")
Section:NewButton("Spawn barrier no cooldown", "haha barrier go brrrr", function()
game.ReplicatedStorage.Barrier:FireServer()
end)
local Section = Tab:NewSection("Spawn Sentry")
Section:NewButton("Spawn Sentry 4 seconds delay", "DO NOT SPAM CLICK, ONLY CLICK AGAIN AFTER THE SENTRY SPAWNED AGAIN", function()
    wait(4)
game.ReplicatedStorage.Sentry:FireServer()
end)
local Section = Tab:NewSection("commit step lego 2 seconds delay")
Section:NewButton("Spawn lego", "DO NOT SPAM CLICK", function()
    wait(2)
    game.ReplicatedStorage.lbrick:FireServer()
end)
local Section = Tab:NewSection("Among us woah 5 seconds delay")
Section:NewButton("among us jumpscare", "DO NOT SPAM CLICK", function()
wait(5)
game.ReplicatedStorage.VineThud:FireServer()
end) 
local Section = Tab:NewSection("spawn rocky ball 5 seconds delay")
Section:NewButton("Spawn ball", "DO NOT SPAM CLICK NOOB", function()
wait(5)
game.ReplicatedStorage.RockyShoot:FireServer()
end)
local Section = Tab:NewSection("Spawn giant wall")
Section:NewButton("Spawn the wall bois 6 seconds delay", "DO NOT SPAM CLICK", function()
wait(6)
game.ReplicatedStorage.PusherWall:FireServer()
end)
local Section = Tab:NewSection("Spawn bob free")
Section:NewButton("Get the badge for free noob", "YOU NEED REPLICA GLOVE", function()
game.ReplicatedStorage.bob:FireServer()
end)
