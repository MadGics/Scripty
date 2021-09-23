while wait() do
for i,v in next, game:GetService('Workspace').Zombies:GetChildren() do
pcall(function()
v.HumanoidRootPart.Size = Vector3.new(100,100,100)
v.HumanoidRootPart.Transparency = 0.7
v.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.HumanoidRootPart.Material = "Neon"
v.HumanoidRootPart.CanCollide = false
end)
end
end


---------------------------------------------



local gun;

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       gun = v
   end
end


while wait() do
   for i,v in pairs(game.Workspace.Zombies:GetChildren()) do
       if v:FindFirstChild("Head") then
           
           local tab1 = {
               Vector3.new(0.059999998658895, 0.059999998658895, 6),
               "Cool yellow",
               0,
               Enum.Material.SmoothPlastic,
               1800
           }
           
           local tab2 = {
               v.Head,
               v.Head.Position,
               Vector3.new(-0.39749202132225, 0.68922543525696, 0.6057790517807),
               1.0203440189362
           }
           
           gun.Fire:FireServer(
               v.Head.Position,
               v.Head.Position,
               Vector3.new(0.96279543638229, -0.037109609693289, -0.26767128705978),
               tab1,
               tab2
           )
       end
   end
end

------------------------------


local gun;

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       gun = v
   end
end

while wait() do
for i,v in next, game:GetService('Workspace').Zombies:GetChildren() do
pcall(function()
v.HumanoidRootPart.Size = Vector3.new(0.059999998658895, 0.059999998658895, 6),
               "Cool yellow",
               0,
               Enum.Material.SmoothPlastic,
               1800
           }
           
           local tab2 = {
               v.Head,
               v.Head.Position,
               Vector3.new(-0.39749202132225, 0.68922543525696, 0.6057790517807),
               1.0203440189362
           }
           
           gun.Fire:FireServer(
               v.Head.Position,
               v.Head.Position,
               Vector3.new(0.96279543638229, -0.037109609693289, -0.26767128705978),
               tab1,
               tab2
           )
v.HumanoidRootPart.Transparency = 0.7
v.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.HumanoidRootPart.Material = "Neon"
v.HumanoidRootPart.CanCollide = false
end)
end
end
-----------------------------
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       gun = v
   end
end
function Ammo() 
    for i, v in next, getgc(true) do 
        if type(v) == "table" and rawget(v, "LoadedAmmo") then 
            v.LoadedAmmo = math.huge
        end
    end
end

while wait() do
for i,v in next, game:GetService('Workspace').Zombies:GetChildren() do
pcall(function()
v.HumanoidRootPart.Size = Vector3.new(100,100,100)
v.HumanoidRootPart.Transparency = 0.7
v.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.HumanoidRootPart.Material = "Neon"
v.HumanoidRootPart.CanCollide = false
}

end)
end
end
------------------------------
function Ammo() 
    for i, v in next, getgc(true) do 
        if type(v) == "table" and rawget(v, "LoadedAmmo") then 
            v.LoadedAmmo = math.huge
        end
    end
end

while wait(3) do
    Ammo()
end
-----------------------------
local spread1 = {
  Increase = 0,
  Decrease = 0,
  Max = 0,
  Min = 0
}
local rec = {
  Tilt = { 0, 0 },
  Side = { 0, 0 },
  Vertical = { 0, 0 },
  Back = { 0, 0 },
  Aimed = 0,
  FirstShot = 0
}
for i,v in pairs(getgc(true)) do
   if type(v) == 'table' and rawget(v, 'magsize') then
       v.magsize = math.huge
       v.storedammo = math.huge
       v.rpm = math.huge
       v.spread = spread1
       v.recoil = rec
       v.mode = "Auto"
   end
end
-----
for i, v in pairs(getgc(true) do 
        if type(v) == "table" and rawget(v, "LoadedAmmo") then 
       v.LoadedAmmo = math.huge
       v.storedammo = math.huge
       v.rpm = math.huge
       v.spread = spread1
       v.recoil = rec
       v.mode = "Auto"
   end
end
