local playersService = game:service'Players';
local userInputService = game:service'UserInputService';
local lightingService = game:service'Lighting';
local httpService = game:service'HttpService';

local localPlayer = playersService.LocalPlayer;
local request = (typeof(syn) == 'table' and syn.request) or request;

if (game.PlaceId == 2000062521) then
    return localPlayer:Kick("execute the script when you are in-game")    
end;

local treeFolder, leafFolder;
if (game.PlaceId == 7542057539) then --/ this code sucks help
    treeFolder = workspace["shenyang workspace"]["trunks n trees"];
    leafFolder = {}; --> annoying
elseif (game.PlaceId == 4026676776) then
    treeFolder = workspace["new trees"][":)"];
    leafFolder = workspace.Ignore.Trees.Leaves;
else
    treeFolder = (workspace:FindFirstChild("Trunks") or nil); --> error
    leafFolder = (workspace.Ignore:FindFirstChild("Leaves") or nil); --> error
end;

local library;
if (not pcall(function()
    library = loadstring(game:HttpGet("https://pastebin.com/raw/b7zp4yKn", true))();
end)) then
    return localPlayer:Kick("An error occurred when attempting to load the UI library, please report this in the discord server - https://parr0t.xyz/discord");
end;

local function getTarget()
    local cTarget, cDistance, cMagnitude = nil, math.huge;
    
    for i, v in next, playersService:GetPlayers() do
        if (not v.Character or v == localPlayer) then continue end;
        if (v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").Health <= 0) then continue end;
        
        cMagnitude = localPlayer:DistanceFromCharacter(v.Character.PrimaryPart.Position);
        if (cMagnitude > library.flags.maxDistance) then continue end;
        
        if (cMagnitude < cDistance) then
            cDistance = cMagnitude;
            cTarget = v;
        end;
    end;
    
    return cTarget;
end;

local function reHook()
    wait(1);
    
    local bulletmodule;do
        for i, v in next, getgc(true) do
            if (typeof(v) ~= "table") then continue end;
                
            if (rawget(v, "count") and rawget(v, "new")) then
                bulletmodule = v;
                break;
            end;
        end;
    end;
    
    if (not bulletmodule) then
        return localPlayer:Kick("failed to find bulletmodule table - this normally means the game has updated.");
    end;

    local _bulletmodule = bulletmodule.new;
    function bulletmodule.new(destination, ...)
        if (not library.flags.silentAim) then return _bulletmodule(destination, ...) end;
        
        local Target = getTarget();
        if (not Target) then
            return _bulletmodule(destination, ...);    
        end;
        return _bulletmodule(Target.Character.PrimaryPart.Position, ...);
    end
end

reHook();
localPlayer.CharacterAdded:Connect(reHook);

task.spawn(function()
    while task.wait() do
        if (not library.flags.modifierEnabled and not library.flags.alwaysDaytime) then continue end;
        
        pcall(function()
            if (library.flags.modifierEnabled) then
                localPlayer.Character.Humanoid.WalkSpeed = library.flags.charWalkspeed + math.random(0.01, 0.9);
                localPlayer.Character.Humanoid.JumpPower = library.flags.charJumpPower + math.random(0.01, 0.9);
            end
            
            if (library.flags.alwaysDaytime) then
                lightingService.TimeOfDay = "12:00:00";
            end;
        end)
    end;
end);

local lastUpdate = tick();

local function updateGCTable(Condition, Old, New)
    if ((tick() - lastUpdate) < 5) then
        repeat wait() until (tick() - lastUpdate) > 5;
    end;
    
    lastUpdate = tick();

    for i, v in next, getgc(true) do
        if (typeof(v) ~= "table") then continue end;

        if (rawget(v, Condition)) then
            if (typeof(Old) == "table") then
                if (#Old ~= #New) then return false end;

                for i = 1, #Old do
                    rawset(v, Old[i], New[i]);
                end
            else
                rawset(v, Old, New);
            end
        end;
    end;
end;

local window = library:CreateWindow("State of Anarchy");do
    if (not pcall(function()
        loadstring(game:HttpGet("https://parr0t.xyz/s/1c9f412f-1288-4017-9f91-485caa4d8763.lua", true))();
    end)) then
        return localPlayer:Kick("An error occurred when attempting to load the ESP library, please report this in the discord server - https://parr0t.xyz/discord");
    end;
    
    local folder = window:AddFolder("Combat");do
        folder:AddToggle({ text = "Silent Aim", flag = "silentAim"});
        folder:AddSlider({ text = "Max Distance", flag = "maxDistance", min = 0, max = 2000, value = 1000});
        folder:AddToggle({ text = "No Recoil", flag = "noRecoil", callback = function(state)
            updateGCTable("cRecoil", {"aRecoil", "vRecoil"}, {(state and Vector3.new()) or Vector3.new(0.25, 0.25, 0.25), (state and Vector3.new()) or Vector3.new(0.25, 0.25, 0.25)})
        end})
        
        folder:AddToggle({ text = "Fast Bullets", flag = "fastBullets", callback = function(state)
            updateGCTable("cRecoil", "velocity", (state and 9e9) or 800)
        end})

        folder:AddToggle({ text = "Fast Fire", flag = "fastFire", callback = function(state)
            updateGCTable("cRecoil", "fireRate", (state and 9e9) or 800)
        end})
    end;
    
    local folder = window:AddFolder("Character");do
        folder:AddToggle({ text = "Enabled", flag = "modifierEnabled" });
        
        folder:AddSlider({ text = "WalkSpeed", flag = "charWalkspeed", min = 0, max = 250, value = 10 });
        folder:AddSlider({ text = "JumpPower", flag = "charJumpPower", min = 0, max = 250, value = 20 });
    end;
    
    local folder = window:AddFolder("ESP");do
        folder:AddToggle({ text = "ESP Enabled", flag = "espEnabled", callback = function(state)
            shared.toggleESPOption("Enabled", "ESP Enabled", state)    
        end});
        folder:AddToggle({ text = "Show Names", flag = "showNames", callback = function(state)
            shared.toggleESPOption("ShowName", "Show Names", state)    
        end});
        folder:AddToggle({ text = "Show Boxes", flag = "showBoxes", callback = function(state)
            shared.toggleESPOption("ShowBoxes", "Show Boxes", state)    
        end});
        folder:AddToggle({ text = "Show Tracers", flag = "showTraces", callback = function(state)
            shared.toggleESPOption("ShowTracers", "Show Tracers", state)    
        end});
        folder:AddToggle({ text = "Show Health", flag = "showHealth", callback = function(state)
            shared.toggleESPOption("ShowHealth", "Show Health", state)    
        end});
        folder:AddToggle({ text = "Show Distance", flag = "showDistance", callback = function(state)
            shared.toggleESPOption("ShowDistance", "Show Distance", state)    
        end});
        folder:AddSlider({ text = "Max Draw Distance", flag = "maxDrawDistance", min = 0, max = 5000, value = 2000, callback = function(val) 
            shared.cMaxDrawDistance = val;
        end});
    end;
    
    local folder = window:AddFolder("World");do
        local backupFolder = Instance.new("Folder");
        backupFolder.Name = httpService:GenerateGUID(false):gsub("-", ""):lower();
        
        folder:AddToggle({ text = "Always Daytime", flag = "alwaysDaytime" });
        if (leafFolder and treeFolder) then
            folder:AddToggle({ text = "Remove All Trees", flag = "removeTrees", callback = function(state)
                if (not leafFolder or not treeFolder) then return end;
                
                do
                    for i, v in next, (state and treeFolder:GetChildren()) or backupFolder:GetChildren() do
                        v.Parent = (state and backupFolder) or treeFolder;
                    end;
                    
                    if (typeof(leafFolder) == "Instance") then
                        for i, v in next, (state and leafFolder:GetChildren()) or backupFolder:GetChildren() do
                            if (v.Name == "Model") then
                                v.Parent = (state and backupFolder) or leafFolder;
                            end;
                        end;
                    end
                end
            end})
        end
    end;
    
    local folder = window:AddFolder("Credits");do
        folder:AddLabel({ text = "cnnn/ixb - scripting" });
        folder:AddLabel({ text = "jan - ui library" });
        folder:AddLabel({ text = "ic3 - ESP library" });
        folder:AddButton({ text = (request and "Join Discord") or "Copy Discord Invite", flag = "joinDiscord", callback = function()
            if (request) then
                request({
                    Url = "http://127.0.0.1:6463/rpc?v=1",
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json",
                        ["Origin"] = "https://discord.com"
                    },
                    Body = httpService:JSONEncode({
                        cmd = "INVITE_BROWSER",
                        args = {
                            code = "TPnz825M7f"
                        },
                        nonce = httpService:GenerateGUID(false)
                    }),
                })
            else
                setclipboard("https://parr0t.xyz/discord");
            end;
        end})
    end;
end;
    
library:Init();
