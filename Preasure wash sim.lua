local autore = true -- disabling this to stop auto refill 
local makemoney = true -- if disabled it wont make you money 
local rebirth = true -- if off wont auto rebirth

local rService = game:GetService("ReplicatedStorage") -- Dont touch these
local remotes = rService.Remotes
local RunService = game:GetService("RunService")

if autore == true then 
while task.wait(.01) do
  remotes.RefillRemote:FireServer(true)
end)
elseif autore == false then
  print("auto refill is disabled")  
end

if makemoney == true then 
RunService.Stepped:Connect(function() -- very fast loop
remotes.SurfaceCompleted:FireServer(54644799232482.91, 3072) -- this needs to be changed
end)
  else
  print("makemoney is disabled")
end

while rebirth do
  task.wait(0.13)
  remotes.RebirthSignal:FireServer()
end
