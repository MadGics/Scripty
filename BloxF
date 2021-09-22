loadstring(game:HttpGet"https://raw.githubusercontent.com/MadGics/Scripty/main/UniV")()
if isfile and isfile"TheKey.shit" and readfile and readfile"TheKey.shit" == CorrectKey then
    warn"KEY IS CORRECT!"
    return execute()
end
local library = loadstring(game:HttpGet"https://pastebinp.com/raw/HfURHRuq")()
local Key, rightkey = library:CreateWindow"Key System"
local getkey = library:CreateWindow"How To Get Key"
Key:AddBox{ text = "Put Key Here", flag = "Key" }
Key:AddButton{
    text = "Enter key",
    callback = function()
        if tostring(library.flags.Key) ~= "" and not rightkey and string.gsub(tostring(library.flags.Key), " ", "") == CorrectKey then
            rightkey = true
            if writefile then writefile("TheKey.shit", CorrectKey) end
            library:DeleteUi()
            warn"KEY IS CORRECT!"
            execute()
        end
    end
}
Key:AddButton{
    text = "Copy Key Link",
    callback = function() spawn(function() setclipboard(KeyLink) end) end
}
Key:AddButton{
    text = "Destroy Gui",
    callback = function() if not rightkey then library:DeleteUi() end end
}
getkey:AddButton{
    text = "Click Here",
    callback = function() spawn(function() setclipboard(HowToGetKey) end) end
}
getkey:AddLabel{ text = "To Copy The Link Of The" }
getkey:AddLabel{ text = "Tutorial Video" }
library:Init()
