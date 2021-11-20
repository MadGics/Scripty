getgenv().KillAll = true

local plr = game.Players.LocalPlayer

while true do
   if getgenv().KillAll then
       for i,v in pairs(workspace.Zombies:GetChildren()) do
           if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health ~= 0 then
               if not plr.Character:FindFirstChildOfClass("Tool") then
                   for _,gun in pairs(plr.Backpack:GetChildren()) do
                       if gun:IsA("Tool") and gun:FindFirstChild("Fire") then
                           gun.Parent = plr.Character
                           tool = gun
                       end
                   end
               else
                   if plr.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Fire") then
                       tool = plr.Character:FindFirstChildOfClass("Tool")
                   end
               end
               local yes = {}
               for i = 1,10 do
                   table.insert(yes,{[1] = v.Head,[2] = v.Head.Position,[3] = Vector3.new(0,0,0),[4] = 0})
               end
               tool.Fire:FireServer(plr.Character.HumanoidRootPart.Position, tool.Handle.Muzzle.WorldPosition, {[1] = Vector3.new(0, 0, 0)}, require(tool.Config).BulletData, yes)
           end
       end
   end
   task.wait(0.1)
end
