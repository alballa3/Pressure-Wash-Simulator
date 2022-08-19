local autore = true -- disabling this to stop auto refill 
local rebirth = true -- if off wont auto rebirth

local rService = game:GetService("ReplicatedStorage") -- Dont touch these
local remotes = rService.Remotes
local RunService = game:GetService("RunService")

if autore == true then 
while task.wait(.01) do
RunService.Stepped:Connect(function()
      remotes.RefillRemote:FireServer(true)
end)
elseif autore == false then
  print("auto refill is disabled")  
end

while rebirth do
  task.wait(0.13)
  remotes.RebirthSignal:FireServer()
end
