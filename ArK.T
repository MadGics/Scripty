local args = {
    [1] = "AddWood",
    [2] = 100000000,
    [3] = "AutoAdd"
}

game:GetService("ReplicatedStorage").RemoteEvents.PlayerStatEvent:FireServer(unpack(args))
