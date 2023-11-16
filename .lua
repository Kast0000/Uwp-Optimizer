-- // I didnt make this for anyone whos wondering
-- // Credits to https://v3rmillion.net/showthread.php?tid=1213784

repeat task.wait() until game:IsLoaded();

getgenv().UWP_Optimizer = true, -- // Turns It On

local vim = game:GetService("VirtualInputManager")
setfpscap(5000)

game.DescendantAdded:Connect(function(d)
  if d.Name == "MainView" and d.Parent.Name == "DevConsoleUI" and UWP_Optimizer then
      task.wait()
      local screen = d.Parent.Parent.Parent
      screen.Enabled = false;
  end
end)

vim:SendKeyEvent(true, "F9", 0, game)    
wait()
vim:SendKeyEvent(false, "F9", 0, game)  

while true do
  task.wait()
  if not UWP_Optimizer then
      continue;
  end
 

  warn("")
 
  if not game:GetService("CoreGui"):FindFirstChild("DevConsoleUI", true):FindFirstChild("MainView") then
       vim:SendKeyEvent(true, "F9", 0, game)    
        wait()
        vim:SendKeyEvent(false, "F9", 0, game)  
        continue
    end
end
