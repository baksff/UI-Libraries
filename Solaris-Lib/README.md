## Solaris Library (modified)

Removed:
```
print("SolarisLib Loaded!")
Music (fully deleted)
Themes (only 2 theme)
```

### Using the Library

> Load the Library
```lua
local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/baksff/UI-Libraries/master/Solaris-Lib/solaris.lua"))()
```

> Creating the Window
```lua
local Window = SolarisLib:New({
  Name = "Title of the UI"
  FolderToSave = "SolarisLibStuff" -- Name of the folder where the UI files will be stored  
})
```

> Creating the Tab
```lua
local Tab = Window:Tab("Tab 1")
```

> Creating the Section
```lua
local Section = Tab:Section("Section 1")
```

### Library Elements

> Button
```lua
Section:Button("Button", function()
    print("Click")
end)
```

> Toggle
```lua
local toggle = Section:Toggle("Toggle", false,"Toggle", function(t)
    print(t)
end)
```

Toggle Set
```lua
toggle:Set(state <boolean>)
```

> Slider
```lua
local slider = Section:Slider("Slider", 0,25,0,2.5,"Slider", function(t)
    print(t)
end)
```

Slider Set
```lua
slider:Set(state <number>)
```

> Dropdown
```lua
local dropdown = Section:Dropdown("Dropdown", {"a","b","c","d","e"},"","Dropdown", function(t)
    print(t)
end)
```

Dropdown Set
```lua
Dropdown:Set(option <string>)
```

Dropdown Refresh
```lua
Dropdown:Refresh(options <table>, deletecurrent <boolean>)
```

> Multi Dropdown
```lua
local multidropdown = Section:MultiDropdown("Multi Dropdown", {"a","b","c","d","e"},{"b", "c"},"Dropdown", function(t)
    print(table.concat(t, ", "))
end)
```

> Colorpicker
```lua
Section:Colorpicker("Colorpicker", Color3.fromRGB(255,255,255),"Colorpicker", function(t)
    print(t)
end)
```

> Textbox
```lua
Section:Textbox("Textbox", true, function(t)
    print(t)
end)
```

> Bind
```lua
Section:Bind("Hold Bind", Enum.KeyCode.E, true, "BindHold", function(t)
    print(t)
end)
```

Normal Bind
```lua
local bind = Section:Bind("Normal Bind", Enum.KeyCode.F, false, "BindNormal", function()
  print("Bind pressed")
end)
```

Bind Set
```lua
bind:Set(state <keycode>)
```

> Label
```lua
local label = Section:Label("Label")
```

Label set
```lua
label:Set(text <string>)
```

### Credits
Solaris Software (idk, if it is right)