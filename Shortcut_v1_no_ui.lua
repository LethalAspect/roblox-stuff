-- CONFIG THIS BEFORE INJECTING!
-- CONFIG THIS BEFORE INJECTING!
-- CONFIG THIS BEFORE INJECTING!

local AllowMessages = true -- This cant be toggled when injected!
local ShortcutProtectedMSG = false -- EPIC custom GUI! (SERVER SIDED)
local Rank = "User" -- Your shortcut custom rank
local allowads = false -- Let us put our discord in some commands (Clearlogs, Anticrash msg, etc)
local AllowTeleportsToShortcutHub = false -- Disabling this will stop all shortcut game teleports

-- SnowClan_8342 Owns this script.
-- BTW join us! https://discord.gg/65yHbG4Wfa

function startupScripts() -- Everything in here will be ran LAST!(Great for your after inject scripts idk xd)
	game.Players:Chat(";perm")
end

function mods() -- Everything in here will be ran BEFORE finishing code (For mods)
	-- You can find mods in our discord
end

-- CONFIG THIS BEFORE INJECTING!
-- CONFIG THIS BEFORE INJECTING!
-- CONFIG THIS BEFORE INJECTING!

-- ANTIS!
-- ANTIS!
local anticrashVG = false -- Stop peole from crashing the server with the vampiretool (;crash supported)
local antijailgearban = true -- fix the jail gear (Mostly)
local antigrayscale = true -- If it finds the grayscale it removes it for you
local antikill = true -- anti death? idk xd
local antijail = true -- Remove your jail.
local mymusiconly = false -- Force your music onto peoples ears
local mymusiconly_ID = 3762692926 -- mymusiconly song ID
local antilogs = true -- Clears logs when someone opens it!
local Superlogs = false -- Every chat /w /t /c /e etc will print into console
local everyonecommands = false -- A little chatbot/command system for people without shortcut!
local padsEnforcement = false -- Resets the pad if someone has more then one pad.
local antiattach = true -- Resets people when they try to attach to something
local antivoid = true -- Teleport back up when you hit -7 or under.
-- ANTIS!
-- ANTIS!



local prefix = "/" -- ONE PREFIX CHAR ONLY!

local fkick = false
local fkickmsg = ";kick "
local fkick_keybind = "k"

local antikick = true -- enabled for protection xd
local antikick_keybind = "p"

local pads_keybind = "n"
local teleport_keybind = "b"
local respawn_keybind = "v"
local reset_keybind = "c"
local forcefield_keybind = "x"
local fly_keybind = "z"
local AttachTO_keybind = "m"
local gravity_keybind = "None" -- Secret keybind
local AttachDelete_keybind = ""
local allowcrash = false

local oofkohlsPmSpam = game:HttpGet("https://pastebin.com/raw/d7eTDKbJ")
local onekspaces = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "
local crashall_Text = onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces.."g"..onekspaces

Quotes = {"i completely cleared a khols admin server","What every tool in AdminJoy looks like when doing the command ;alltools","ayyyyy i have the owner of admin joy","he is my friend","ClassicClient-source","DDOSER-APRIL2-PATCH.exe","FastColoredTextBox.dll","Best MCPE hack IS shortcut :D","Powered by muffins","gg ez kid","Use the force bitch, Use the force.","I hope you've had a nice start to the week.","raw/d7eTDKbJ","Burned bitch!","ow they dont know u?","bitch","heart","my","steal","Fuck you -Ex_zivye(NOT REALLY)","you can also get private info via exif","i hope u didnt add for clearlogs I word cuz ill hate u",";kill all, What why no work?!?!?!?!",";fly plzz",":shrek me",":admin me",":fly","\"Commands\"","yo mama xd","Hi! So, you know on ragdoll, I wanna do that baloon thing, do you know how-",";fly","you okay? also, im here to help. if you need help, tell me!","no joke tho- im here to help you if you need help-","Remove the l from clock-","viewing logs I see","aDmIn mE", "Hey bitch~","Shortcuts the best MC hack","Fortnite sucks.","Only I can clearlogs","Adminjoy users aren't bright","Do Win+X for perm!","IM GAMERBOY80!","nice bobs","What are you doing step bro!","local dick = \"NONE\"","May i put my token next to yours...","Among.Us.v2020.11.17s","i have a working kick script","Yo anyone","omg nooooo!!!!","PEE","this will be a roblox id in less then 3 days","Subway Sexist - Subway Surfers Rap"," German SpongeBob [EARRAPE] ","Why do i get more suggestions from shortcuts general then its suggestions channel...","can someone tell me a free excuter i can use?","[Content Deleted]","#### YOU #####","Laamy we in da same server what a goat","what is #other-scripts for","wearedevs.net = VIRUS","Im bored, learn lua.","function ChangeColour(Part, Colour)","omg11!!1","the only differents is when he sees me he stands there tripping me ;-;","i met admin joy wner too!1 !11","easyexploits.dll","yes heres so not virus.exe [FILE.txt]","OMG YOU ARE HACKER?1?11/!?/1/!?","Make anti-tp (Im trying)","Took me all fucking day to get this shit","Whats that step br- WHAT!","HACOR!?!?!??!!??","laamy is hacer","i dont think wkick works","[Laggy Text Here]","i-, wdym????"}

local crashall = false
local teskking = false
local Wteskking = "none"
local wkicking = false
local Wwkicking = "none"
local spamming = false
local Wspamming = "nothing"

local mousee = game.Players.LocalPlayer:GetMouse()
local Players = game:GetService("Players")
local mod_Data = nil -- Dont edit this is how the mod gets data like shortcuts prefix or modules toggled.

local Game_Folder = game:GetService("Workspace").Terrain["_Game"]
local Workspace_Folder = Game_Folder.Workspace
local Admin_Folder = Game_Folder.Admin
local Stable_Check = false
local v1 = "PaintPart"

mousee.KeyDown:connect(function(key)
	if key:lower() == AttachTO_keybind then
		logn("Attached to object")
		if mousee.Target then
			local target = mousee.Target
			function movepart()
				local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.25)
				looping = false
			end
			movepart()
		end
	end
	
	if key:lower() == AttachDelete_keybind then
		logn("Attached to object")
		if mousee.Target then
			local target = mousee.Target
			function movepart()
				local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
				local looping = true
				spawn(function()
					while true do
						game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
					end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.25)
				looping = false
				game.Players:Chat(prefix..'super skydive me')
				wait(1)
				game.Players:Chat(prefix..'spam tp me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me,me')
				wait(5)
				game.Players:Chat(prefix..'stop')
				wait(0.25)
				game.Players:Chat('respawn me')
			end
			movepart()
		end
	end
	
	if key:lower() == fkick_keybind then
		kicking()
	end
	if key:lower() == antikick_keybind then
		antikicking()
	end
	if key:lower() == respawn_keybind then
		game.Players:Chat("respawn me")
	end
	if key:lower() == reset_keybind then
		game.Players:Chat("reset me")
	end
	if key:lower() == forcefield_keybind then
		game.Players:Chat("ff me")
	end
	if key:lower() == gravity_keybind then
		loadstring(game:HttpGet("https://pastebin.com/raw/geUZHr7B"))()
	end
	if key:lower() == fly_keybind then
		game.Players:Chat("fly me")
	end
	if key:lower() == teleport_keybind then
		game.Players:Chat("tp me me me")
	end
	if key:lower() == pads_keybind then
		game.Players:Chat(prefix.."pads")
	end
end)

function kicking()
	fkick = not fkick
	if fkick == true then
		print("Kicking: Enabled")
		logn("Kicking Enabled", "Ok")
	elseif fkick == false then
		print("Kicking: Disabled")
		logn("Kicking Disabled", "Ok")
	end
end

function antikicking()
	antikick = not antikick
	if antikick == true then
		print("AntiCrash: Enabled")
		logn("AntiCrash Enabled", "Ok")
	elseif antikick == false then
		print("AntiCrash: Disabled")
		logn("AntiCrash Disabled", "Ok")
	end
end

function logn(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "ShortCut"; 
		Text = msg; 
		Duration = 5;
	})
end

Players.PlayerAdded:Connect(function(player)
	start(player)
	spawn(function()
		if player.Name == "SnowClan_8342" then
			say("The owner of shortcut has joined the game! (SnowClan_8342)")
		end
	end)
end)


logn("Thanks for using ShortCuts :)")

local function GetPad(msg)
	while PadCheck == true do
		wait(0)
		if not game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild(game.Players.LocalPlayer.Name .. "'s admin") then
			if game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin") then
				local pad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
				local padCFrame = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
				wait(0.125)
				pad.CanCollide = false
				repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				pad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait(0.125)
				pad.CFrame = padCFrame
				pad.CanCollide = true
			else
				fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
			end
		end
	end
end

Players.LocalPlayer.Chatted:Connect(function(msg)
	CancelTeleport = true
	local amount = nil
	if string.sub(msg:lower(), 0, 5) == prefix.."rrej" then
		local x = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = v.playing
			end
		end
		if #x > 0 then
			say("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			logn("Unable to Locate Server")
		end
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."rjg" then
		local x = {}
		local amount = nil
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.playing == tonumber(string.sub(msg:lower(),6)) and v.id ~= game.JobId then
				x[#x + 1] = v.id
				amount = tonumber(string.sub(msg:lower(),6))
			end
		end
		if #x > 0 then
			say("Joining a server with "..amount.." Players")
			wait(0.25)
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		else
			logn("Unable to Locate Server")
		end
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."srj" then
		game.Players:Chat(prefix.."rjg 1")
		game.Players:Chat(prefix.."rjg 2")
		game.Players:Chat(prefix.."rjg 3")
		game.Players:Chat(prefix.."rjg 4")
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."sch" then
		gotoShortcutHub("Requested", 1) -- Go to shortcuts main hub for rejoining
	end
	
	if string.sub(msg:lower(), 0, 19) == prefix.."color all original" then
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		local remote = game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls
		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v4 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Bright green"))
						}
					remote:InvokeServer(v1, v4)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Admin Dividers"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v5 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
					remote:InvokeServer(v1, v5)
				end
			end)
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Basic House"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "SmoothBlockModel103" or v.Name == "SmoothBlockModel105" or v.Name == "SmoothBlockModel106" or v.Name == "SmoothBlockModel108" or v.Name == "SmoothBlockModel11" or v.Name == "SmoothBlockModel113" or v.Name == "SmoothBlockModel114" or v.Name == "SmoothBlockModel115" or v.Name == "SmoothBlockModel116" or v.Name == "SmoothBlockModel118" or v.Name == "SmoothBlockModel122" or v.Name == "SmoothBlockModel126" or v.Name == "SmoothBlockModel129" or v.Name == "SmoothBlockModel13" or v.Name == "SmoothBlockModel130" or v.Name == "SmoothBlockModel131" or v.Name == "SmoothBlockModel132" or v.Name == "SmoothBlockModel134" or v.Name == "SmoothBlockModel135" or v.Name == "SmoothBlockModel14" or v.Name == "SmoothBlockModel140" or v.Name == "SmoothBlockModel142" or v.Name == "SmoothBlockModel147" or v.Name == "SmoothBlockModel15" or v.Name == "SmoothBlockModel154" or v.Name == "SmoothBlockModel155" or v.Name == "SmoothBlockModel164" or v.Name == "SmoothBlockModel166" or v.Name == "SmoothBlockModel173" or v.Name == "SmoothBlockModel176" or v.Name == "SmoothBlockModel179" or v.Name == "SmoothBlockModel185" or v.Name == "SmoothBlockModel186" or v.Name == "SmoothBlockModel190" or v.Name == "SmoothBlockModel191" or v.Name == "SmoothBlockModel196" or v.Name == "SmoothBlockModel197" or v.Name == "SmoothBlockModel198" or v.Name == "SmoothBlockModel20" or v.Name == "SmoothBlockModel201" or v.Name == "SmoothBlockModel203" or v.Name == "SmoothBlockModel205" or v.Name == "SmoothBlockModel207" or v.Name == "SmoothBlockModel208" or v.Name == "SmoothBlockModel209" or v.Name == "SmoothBlockModel210" or v.Name == "SmoothBlockModel211" or v.Name == "SmoothBlockModel213" or v.Name == "SmoothBlockModel218" or v.Name == "SmoothBlockModel22" or v.Name == "SmoothBlockModel223" or v.Name == "SmoothBlockModel224" or v.Name == "SmoothBlockModel226" or v.Name == "SmoothBlockModel26" or v.Name == "SmoothBlockModel29" or v.Name == "SmoothBlockModel30" or v.Name == "SmoothBlockModel31" or v.Name == "SmoothBlockModel36" or v.Name == "SmoothBlockModel37" or v.Name == "SmoothBlockModel38" or v.Name == "SmoothBlockModel39" or v.Name == "SmoothBlockModel41" or v.Name == "SmoothBlockModel48" or v.Name == "SmoothBlockModel49" or v.Name == "SmoothBlockModel51" or v.Name == "SmoothBlockModel56" or v.Name == "SmoothBlockModel67" or v.Name == "SmoothBlockModel68" or v.Name == "SmoothBlockModel69" or v.Name == "SmoothBlockModel70" or v.Name == "SmoothBlockModel72" or v.Name == "SmoothBlockModel75" or v.Name == "SmoothBlockModel8" or v.Name == "SmoothBlockModel81" or v.Name == "SmoothBlockModel85" or v.Name == "SmoothBlockModel93" or v.Name == "SmoothBlockModel98" then
						local v6 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Brick yellow"))
							}
						remote:InvokeServer(v1, v6)
					end
					
					if v.Name == "SmoothBlockModel40" then
						local v7 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright green"))
							}
						remote:InvokeServer(v1, v7)
					end
					
					if v.Name == "SmoothBlockModel100" or v.Name == "SmoothBlockModel102" or v.Name == "SmoothBlockModel104" or v.Name == "SmoothBlockModel107" or v.Name == "SmoothBlockModel109" or v.Name == "SmoothBlockModel110" or v.Name == "SmoothBlockModel111" or v.Name == "SmoothBlockModel119" or v.Name == "SmoothBlockModel12" or v.Name == "SmoothBlockModel120" or v.Name == "SmoothBlockModel123" or v.Name == "SmoothBlockModel124" or v.Name == "SmoothBlockModel125" or v.Name == "SmoothBlockModel127" or v.Name == "SmoothBlockModel128" or v.Name == "SmoothBlockModel133" or v.Name == "SmoothBlockModel136" or v.Name == "SmoothBlockModel137" or v.Name == "SmoothBlockModel138" or v.Name == "SmoothBlockModel139" or v.Name == "SmoothBlockModel141" or v.Name == "SmoothBlockModel143" or v.Name == "SmoothBlockModel149" or v.Name == "SmoothBlockModel151" or v.Name == "SmoothBlockModel152" or v.Name == "SmoothBlockModel153" or v.Name == "SmoothBlockModel156" or v.Name == "SmoothBlockModel157" or v.Name == "SmoothBlockModel158" or v.Name == "SmoothBlockModel16" or v.Name == "SmoothBlockModel163" or v.Name == "SmoothBlockModel167" or v.Name == "SmoothBlockModel168" or v.Name == "SmoothBlockModel169" or v.Name == "SmoothBlockModel17" or v.Name == "SmoothBlockModel170" or v.Name == "SmoothBlockModel172" or v.Name == "SmoothBlockModel177" or v.Name == "SmoothBlockModel18" or v.Name == "SmoothBlockModel180" or v.Name == "SmoothBlockModel184" or v.Name == "SmoothBlockModel187" or v.Name == "SmoothBlockModel188" or v.Name == "SmoothBlockModel189" or v.Name == "SmoothBlockModel19" or v.Name == "SmoothBlockModel193" or v.Name == "SmoothBlockModel2" or v.Name == "SmoothBlockModel200" or v.Name == "SmoothBlockModel202" or v.Name == "SmoothBlockModel21" or v.Name == "SmoothBlockModel214" or v.Name == "SmoothBlockModel215" or v.Name == "SmoothBlockModel216" or v.Name == "SmoothBlockModel219" or v.Name == "SmoothBlockModel220" or v.Name == "SmoothBlockModel221" or v.Name == "SmoothBlockModel222" or v.Name == "SmoothBlockModel225" or v.Name == "SmoothBlockModel227" or v.Name == "SmoothBlockModel229" or v.Name == "SmoothBlockModel23" or v.Name == "SmoothBlockModel230" or v.Name == "SmoothBlockModel231" or v.Name == "SmoothBlockModel25" or v.Name == "SmoothBlockModel28" or v.Name == "SmoothBlockModel32" or v.Name == "SmoothBlockModel33" or v.Name == "SmoothBlockModel34" or v.Name == "SmoothBlockModel42" or v.Name == "SmoothBlockModel44" or v.Name == "SmoothBlockModel47" or v.Name == "SmoothBlockModel54" or v.Name == "SmoothBlockModel55" or v.Name == "SmoothBlockModel58" or v.Name == "SmoothBlockModel59" or v.Name == "SmoothBlockModel6" or v.Name == "SmoothBlockModel61" or v.Name == "SmoothBlockModel62" or v.Name == "SmoothBlockModel63" or v.Name == "SmoothBlockModel74" or v.Name == "SmoothBlockModel76" or v.Name == "SmoothBlockModel77" or v.Name == "SmoothBlockModel78" or v.Name == "SmoothBlockModel79" or v.Name == "SmoothBlockModel80" or v.Name == "SmoothBlockModel84" or v.Name == "SmoothBlockModel86" or v.Name == "SmoothBlockModel87" or v.Name == "SmoothBlockModel88" or v.Name == "SmoothBlockModel90" or v.Name == "SmoothBlockModel91" or v.Name == "SmoothBlockModel92" or v.Name == "SmoothBlockModel94" or v.Name == "SmoothBlockModel95" or v.Name == "SmoothBlockModel96" then
						local v8 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Bright red"))
							}
						remote:InvokeServer(v1, v8)
					end
					
					if v.Name == "SmoothBlockModel10" or v.Name == "SmoothBlockModel101" or v.Name == "SmoothBlockModel117" or v.Name == "SmoothBlockModel121" or v.Name == "SmoothBlockModel144" or v.Name == "SmoothBlockModel145" or v.Name == "SmoothBlockModel146" or v.Name == "SmoothBlockModel148" or v.Name == "SmoothBlockModel150" or v.Name == "SmoothBlockModel159" or v.Name == "SmoothBlockModel161" or v.Name == "SmoothBlockModel171" or v.Name == "SmoothBlockModel174" or v.Name == "SmoothBlockModel175" or v.Name == "SmoothBlockModel181" or v.Name == "SmoothBlockModel182" or v.Name == "SmoothBlockModel183" or v.Name == "SmoothBlockModel192" or v.Name == "SmoothBlockModel194" or v.Name == "SmoothBlockModel195" or v.Name == "SmoothBlockModel199" or v.Name == "SmoothBlockModel204" or v.Name == "SmoothBlockModel206" or v.Name == "SmoothBlockModel212" or v.Name == "SmoothBlockModel217" or v.Name == "SmoothBlockModel228" or v.Name == "SmoothBlockModel24" or v.Name == "SmoothBlockModel27" or v.Name == "SmoothBlockModel35" or v.Name == "SmoothBlockModel4" or v.Name == "SmoothBlockModel43" or v.Name == "SmoothBlockModel45" or v.Name == "SmoothBlockModel46" or v.Name == "SmoothBlockModel50" or v.Name == "SmoothBlockModel53" or v.Name == "SmoothBlockModel57" or v.Name == "SmoothBlockModel60" or v.Name == "SmoothBlockModel64" or v.Name == "SmoothBlockModel65" or v.Name == "SmoothBlockModel66" or v.Name == "SmoothBlockModel7" or v.Name == "SmoothBlockModel71" or v.Name == "SmoothBlockModel73" or v.Name == "SmoothBlockModel82" or v.Name == "SmoothBlockModel83" or v.Name == "SmoothBlockModel89" or v.Name == "SmoothBlockModel99" then
						local v9 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark orange"))
							}
						remote:InvokeServer(v1, v9)
					end
					
					if v.Name == "SmoothBlockModel1" or v.Name == "SmoothBlockModel3" or v.Name == "SmoothBlockModel5" or v.Name == "SmoothBlockModel9" then
						local v10 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
							}
						remote:InvokeServer(v1, v10)
					end
					
					if v.Name == "SmoothBlockModel112" then
						local v11 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium blue"))
							}
						remote:InvokeServer(v1, v11)
					end
					
					if v.Name == "SmoothBlockModel52" or v.Name == "SmoothBlockModel97" then
						local v12 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Reddish brown"))
							}
						remote:InvokeServer(v1, v12)
					end
					
					if v.Name == "SmoothBlockModel160" or v.Name == "SmoothBlockModel162" or v.Name == "SmoothBlockModel165" or v.Name == "SmoothBlockModel178" then
						local v13 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Sand red"))
							}
						remote:InvokeServer(v1, v13)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Building Bricks"]:GetDescendants()) do
			if v:IsA("Part") then
				spawn(function()
					if v.Name == "Part29" or v.Name == "Part31" or v.Name == "Part55" then
						local v14 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Dark stone grey"))
						}
						remote:InvokeServer(v1, v14)
					end
				
					if v.Name == "Part11" or v.Name == "Part18" or v.Name == "Part25" or v.Name == "Part3" or v.Name == "Part43" then
						local v15 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Deep blue"))
							}
						remote:InvokeServer(v1, v15)
					end
				
					if v.Name == "Part13" or v.Name == "Part21" or v.Name == "Part23" or v.Name == "Part7" then
						local v16 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Institutuional white"))
							}
						remote:InvokeServer(v1, v16)
					end
					
					if v.Name == "Part17" or v.Name == "Part26" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v17 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Lime green"))
							}
						remote:InvokeServer(v1, v17)
					end
					
					if v.Name == "Part30" or v.Name == "Part32" or v.Name == "Part33" or v.Name == "Part34" or v.Name == "Part35" or v.Name == "Part36" or v.Name == "Part39" or v.Name == "Part40" or v.Name == "Part41" or v.Name == "Part42" or v.Name == "Part46" or v.Name == "Part47" or v.Name == "Part48" or v.Name == "Part49" or v.Name == "Part50" or v.Name == "Part51" or v.Name == "Part52" or v.Name == "Part53" or v.Name == "Part54" or v.Name == "Part56" or v.Name == "Part57" or v.Name == "Part58" or v.Name == "Part59" or v.Name == "Part60" or v.Name == "Part61" or v.Name == "Part38" or v.Name == "Part5" or v.Name == "Part9" then
						local v18 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Medium Stone grey"))
							}
						remote:InvokeServer(v1, v18)
					end
					
					if v.Name == "Part12" or v.Name == "Part15" or v.Name == "Part24" or v.Name == "Part44" or v.Name == "Part6" then
						local v19 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("New yeller"))
							}
						remote:InvokeServer(v1, v19)
					end
					
					if v.Name == "Part14" or v.Name == "Part19" or v.Name == "Part2" or v.Name == "Part27" then
						local v20 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really black"))
							}
						remote:InvokeServer(v1, v20)
					end
					
					if v.Name == "Part1" or v.Name == "Part10" or v.Name == "Part16" or v.Name == "Part22" or v.Name == "Part37" then
						local v21 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Really red"))
							}
						remote:InvokeServer(v1, v21)
					end
					
					if v.Name == "Part20" or v.Name == "Part28" or v.Name == "Part4" or v.Name == "Part45" or v.Name == "Part8" then
						local v22 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Toothpaste"))
							}
						remote:InvokeServer(v1, v22)
					end
				end)
			end
		end


		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


		for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace.Obby:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local v23 =
						{
							["Part"] = v,
							["Color"] = transformToColor3(BrickColor.new("Really red"))
						}
					remote:InvokeServer(v1, v23)
				end
				
				for i,v in pairs(game.Workspace.Terrain["_Game"].Workspace["Obby Box"]:GetChildren()) do
					if v:IsA("Part") then
						local v24 =
							{
								["Part"] = v,
								["Color"] = transformToColor3(BrickColor.new("Teal"))
							}
						remote:InvokeServer(v1, v24)
					end
				end
			end)
		end
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."getpos" then
		local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		say("Check console!")
		game.Players:Chat([[music 
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]]..cf.X..[[, ]]..cf.Y..[[, ]]..cf.Z..[[
		]])
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."ufo" then
		local plr = string.sub(msg:lower(), 6)
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("size "..plr.." 0.3")
		game.Players:Chat("unsize "..plr)
		game.Players:Chat("size "..plr.." 4")
		game.Players:Chat("paint "..plr.." brown")
		game.Players:Chat("name "..plr.." Ufo")
		wait(0.25)
		game.Players:Chat("removelimbs "..plr)
		game.Players:Chat("dog "..plr)
		game.Players:Chat("rainbowify "..plr)
		game.Players:Chat("spin "..plr)
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."fixbp" then
		local plr = string.sub(msg:lower(), 8)
		game.Players:Chat(prefix.."trap "..plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500.99981689453, 0.10156404972076, 0))
		wait(0.10)
		game.Players:Chat("jail me")
		game.Players:Chat("tp "..plr.." me")
		wait(0.25)
		
		local target = Workspace_Folder.Baseplate
		function movepart()
			local cf = game.Players.LocalPlayer.Character.HumanoidRootPart
			local looping = true
			spawn(function()
				while true do
					game:GetService('RunService').Heartbeat:Wait()
					game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
					cf.CFrame = target.CFrame * CFrame.new(-1*(target.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
					if not looping then break end
				end
			end)
			spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
			wait(0.25)
			looping = false
		end
		movepart()
		wait(0.75)
		
		game.Players:Chat("tp me "..plr)
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."padban" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Pad_Ban, v.Name)
				logn("Banned "..v.Name.." from pads.")
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."unpadban" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Pad_Ban) do
					if b == v.Name then
						table.remove(Pad_Ban, a)
						logn("Unbanned "..v.Name.." from pads.")
					end
				end
			end
		end
	end -- table.remove(list1, i)
	
	if string.sub(msg:lower(), 0, 5) == prefix.."perm" then
		PadCheck = true
        GetPad(msg)
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."nonperm" then
		PadCheck = false
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."infjump" then
		InfiniteJumpEnabled = true
		game:GetService("UserInputService").JumpRequest:connect(function()
			if InfiniteJumpEnabled then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."attach" then
		logn("We wont put your camera in the right place for ya xd")
		game.Players:Chat("stun me")
		wait(2.4)
		game.Players:Chat("punish me")
		wait(1.7)
		game.Players:Chat("unpunish me")
		logn("Attached Unless your camera wasn't in the right place xd")
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."tesk " then
		logn("Kicking player (This may take a little bit...)")
		Wteskking = string.sub(msg:lower(), 7)
		teskking = true
	end
	
	if string.sub(msg:lower(), 0, 2) == prefix.."g " then
		loadstring()
	end
	
	if string.sub(msg:lower(), 0, 5) == prefix.."stop" then
		logn("Stopped teskker...")
		Wteskking = "none"
		teskking = false
		Wwkicking = "none"
		wkicking = false
		spamming = false
		crashall = false
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."clicktp" then
		logn("Gave you the clicktp tool")
		plr = game.Players.LocalPlayer
		mouse = plr:GetMouse()
		hum = plr.Character.HumanoidRootPart
		local tptool = Instance.new("Tool", plr.Backpack)

		tptool.Name = "ClickTP"
		tptool.CanBeDropped = false
		tptool.RequiresHandle = false

		tptool.Activated:Connect(function()
			if mouse.Target then
				hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
			end
		end)
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."clearlogs" then
		logn("Cleared!")
		for i = 1,100 do
			game.Players:Chat("ff "..Quotes[math.random(1, #Quotes)])
		end
		wait(0)
		if allowads == true then
			game.Players:Chat("ff Powered by shortcut")
			game.Players:Chat("ff Disc Laamy#5148")
			game.Players:Chat("unff all")
		end
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."super " then
		logn("Spamming!")
		for i = 1,100 do
			game.Players:Chat(string.sub(msg:lower(), 8))
		end
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."traplogs" then
		logn("WARNING DONT CHECK LOGS!")
		for i = 1,100 do
			game.Players:Chat("ff "..oofkohlsPmSpam)
		end
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."spam " then
		logn("Spamming!")
		Wspamming = string.sub(msg:lower(), 7)
		spamming = true
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."lagall" then
		logn("Warning this can be powerful and can only be aimmed at everyone...")
		crashall = true
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."pads" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-32.7, 8.22999954, 94.5))
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."skydive" then
		logn("Skydived!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y + 1500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z))
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."house" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
	end -- CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
	
	if string.sub(msg:lower(), 0, 6) == prefix.."spawn" then
		logn("Teleported to pads!")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-41, 3.7, -15.589996337891))
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."reg" then
		logn("Pads regenerated! (AdminJoy)")
		regen()
	end
	
	if string.sub(msg:lower(), 0, 8) == ";prefix " then
		logn("Changed prefix to '"..string.sub(msg:lower(), 9, 9).."'")
		prefix = string.sub(msg:lower(), 9, 9)
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."shutdown" then
		logn("Shortcut v1's shutdown is so old, use shortcut v2's //shutdown")
		-- gotoShortcutHub("Server shutdown", 10) -- Go to shortcuts main hub for rejoining
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."fps" then
		loadstring(game:HttpGet("https://pastebin.com/0LJ9htbC"))()
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."crash" then
		if string.sub(msg:lower(), 0, 9) ==  prefix.."crashall" then
			logn("We've infact moved this command and its now called lagall :)")
		else
			logn("Just hold the tool your given xd (Expires in 10 seconds.)")
			game.Players:Chat("gear me 00000000000000000094794847")
			allowcrash = true
			spawn(function()
				wait(10)
				allowcrash = false
				logn("VampireVanquisher Expired.")
			end)
			--This will permacrash it if user did not unequip vampire vanquisher
			spawn(function()
			        game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("size all .3")
					game.Players:Chat("freeze all")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("size all 10")
					game.Players:Chat("clone all")
					wait(0.25)
					game.Players:Chat("removeclones")
					wait(0.25)
					game.Players:Chat("unchar all")
				end)	
			while true do
				if game.Players.LocalPlayer.Character:FindFirstChild("VampireVanquisher") then
					wait(.18)
					for i = 1,100 do
						game.Players:Chat("size me 0000000000000000000.3")
					end
					--gotoShortcutHub("Server CRASHED", 1) -- Go to shortcuts main hub for rejoining
					break
				end
				wait()
				if allowcrash == false then
					break
				end
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."bind fkick" then
		logn("fkick is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		fkick_keybind = string.sub(msg:lower(), 13, 13)
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."bind antikick" then
		logn("antikick is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		antikick_keybind = string.sub(msg:lower(), 16, 16)
	end
	
	if string.sub(msg:lower(), 0, 13) == prefix.."bind respawn" then
		logn("respawn is now bound to '"..string.sub(msg:lower(), 15, 15).."'")
		respawn_keybind = string.sub(msg:lower(), 15, 15)
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."bind reset" then
		logn("reset is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		reset_keybind = string.sub(msg:lower(), 13, 13)
	end
	
	if string.sub(msg:lower(), 0, 16) == prefix.."bind forcefield" then
		logn("forcefield is now bound to '"..string.sub(msg:lower(), 18, 18).."'")
		forcefield_keybind = string.sub(msg:lower(), 18, 18)
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."bind fly" then
		logn("fly is now bound to '"..string.sub(msg:lower(), 11, 11).."'")
		fly_keybind = string.sub(msg:lower(), 11, 11)
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."bind teleport" then
		logn("teleport is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		teleport_keybind = string.sub(msg:lower(), 16, 16)
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."boombox" then
		logn("Gave player a boombox!")
		local player = string.sub(msg:lower(), 10)
		if player ~= "" then
			game.Players:Chat("gear "..player.." 000000000000000000212641536")
		else
			game.Players:Chat("gear me 000000000000000000212641536")
		end
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."bind pads" then
		logn("pads is now bound to '"..string.sub(msg:lower(), 13, 13).."'")
		pads_keybind = string.sub(msg:lower(), 13, 13)
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."bind attachto" then
		logn("attachto is now bound to '"..string.sub(msg:lower(), 16, 16).."'")
		AttachTO_keybind = string.sub(msg:lower(), 16, 16)
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."bok" then
		logn("Now making person bok...")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 6)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6))
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6)..","..string.sub(msg:lower(), 6))
		wait(5.5)
		game.Players:Chat("kill "..string.sub(msg:lower(), 6))
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."tkick" then
		logn("Atempting to kick (Fixed, ty AmericanDisgrace :)")
		wait(0.5)
		local Luser = string.sub(msg:lower(), 8)..","
		game.Players:Chat(prefix.."super dog "..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8)..","..string.sub(msg:lower(), 8))
		wait(3)
		game.Players:Chat("kill "..Luser)
		wait(0.09)
		game.Players:Chat(prefix.."tesk "..string.sub(msg:lower(), 8))
	end
	
	if string.sub(msg:lower(), 0, 5) == prefix.."trap" then
		logn("Trapped person!")
		game.Players:Chat("freeze "..string.sub(msg:lower(), 7))
		game.Players:Chat("name "..string.sub(msg:lower(), 7).." ")
		game.Players:Chat("thaw "..string.sub(msg:lower(), 7))
	end
	
	if string.sub(msg:lower(), 0, 3) == prefix.."ds" then
		logn("Setting up dancing swords script!")
		game.Players:Chat("hat me 0000000000000000004506945409") -- Sword 1
		game.Players:Chat("hat me 0000000000000000004794315940") -- Sword 2
		game.Players:Chat("hat me 0000000000000000004315489767") -- Sword 3
		game.Players:Chat("hat me 0000000000000000004458601937") -- Sword 4
		game.Players:Chat("gear me 000000000000000000212641536") -- Boombox
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."lua" then
		loadstring(string.sub(msg:lower(), 6))()
	end
	
	if string.sub(msg:lower(), 0, 12) == prefix.."moveobbybox" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Obby Box")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.3)
                    looping = false
                    game.Players:Chat("skydive me")
                    wait(0.1)
					game.Players:Chat("respawn me")
                    wait(0.2)
                end
            end
            wait(0)
            Stable_Check = false
            logn("{Move.lua} Done Moving Obby Box")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 15) == prefix.."moveobbybricks" then
		game.Players:Chat(prefix.."nok")
		wait(0)
        if Stable_Check == false then
            logn("{Move.lua} Moving Obby Kill Bricks")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.3)
                    looping = false
                    game.Players:Chat("skydive me")
                    wait(0.1)
					game.Players:Chat("respawn me")
                    wait(0.35)
                end
            end
            wait(0)
            Stable_Check = false
            logn("{Move.lua} Done Moving Obby Kill Bricks")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 19) == prefix.."movebuildingbricks" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Building Bricks")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Building Bricks"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.30)
                    looping = false
                    game.Players:Chat("skydive me")
					game.Players:Chat("skydive me")
                    wait(0.1)
					game.Players:Chat("respawn me")
                    wait(0.2)
                end
            end
            wait(0)
            Stable_Check = false
            logn("{Move.lua} Done Moving Building Bricks")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 18) == prefix.."moveadmindividers" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Admin Dividers")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Admin Dividers"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.3)
                    looping = false
                    game.Players:Chat("skydive me")
                    wait(0.1)
					game.Players:Chat("respawn me")
                    wait(0.2)
                end
            end
            wait(0)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Dividers")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."control" then
		local plr = string.sub(msg:lower(), 10)
		game.Players:Chat("dog me,"..plr)
		game.Players:Chat("tp me "..plr)
		wait(1)
		game.Players:Chat("punish me,"..plr)
		game.Players:Chat("undog me,"..plr)
		wait(0.25)
		game.Players:Chat("unpunish me,"..plr)
		game.Players:Chat("invis me")
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."movehouse" then
        if Stable_Check == false then
            logn("{Move.lua} Moving House")
            Stable_Check = true
            for i, v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
                if v.CFrame.Y < 500 then
                    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                    local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local looping = true

                    spawn(function()
                        while true do
                            game:GetService('RunService').Heartbeat:Wait()
                            game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                            cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                            if not looping then break end
                        end
                    end)
                    spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                    wait(0.3)
                    looping = false
                    game.Players:Chat("skydive me")
                    wait(0.1)
					game.Players:Chat("respawn me")
                    wait(0.2)
                end
            end
            wait(0)
            Stable_Check = false
            logn("{Move.lua} Done Moving House")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."movepads" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Admin Pads")
            Stable_Check = true
            for i, v in pairs(Admin_Folder.Pads:GetDescendants()) do
                if v.Name == "Head" then
                    if v.CFrame.Y < 500 then
                        repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

                        local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        local looping = true

                        spawn(function()
                            while true do
                                game:GetService('RunService').Heartbeat:Wait()
                                game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                                cf.CFrame = v.CFrame * CFrame.new(-1*(v.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
                                if not looping then break end
                            end
                        end)
                        spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
                        wait(0.3)
                        looping = false
						game.Players:Chat("skydive me")
						game.Players:Chat("skydive me")
						game.Players:Chat("skydive me")
						game.Players:Chat("skydive me")
						game.Players:Chat("skydive me")
						game.Players:Chat("skydive me")
                        wait(0.1)
						game.Players:Chat("respawn me")
                        wait(0.2)
                    end
                end
            end
            wait(0)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Pads")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 13) == prefix.."moveresetpad" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Admin Reset Pad")
            Stable_Check = true
            if Admin_Folder.Regen.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				game.Players:Chat("skydive me")
				wait(0.1)
				game.Players:Chat("respawn me")
            end
            wait(0)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Reset Pad")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."movebaseplate" then
        if Stable_Check == false then
            logn("{Move.lua} Moving Basteplate")
            Stable_Check = true
            if Workspace_Folder.Baseplate.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Baseplate.CFrame * CFrame.new(-1*(Workspace_Folder.Baseplate.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("skydive me")
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Basteplate")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 15) == prefix.."setspawnpoints" then
		local playername = string.sub(msg:lower(), 17)
	
        if Stable_Check == false then
            logn("{Move.lua} Moving Admin Reset Pad")
            Stable_Check = true
            if Workspace_Folder.Spawn1.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn1.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn1.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Reset Pad")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
		if Stable_Check == false then
            logn("{Move.lua} Moving Admin Reset Pad")
            Stable_Check = true
            if Workspace_Folder.Spawn2.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn2.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn2.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Reset Pad")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
		if Stable_Check == false then
            logn("{Move.lua} Moving Admin Reset Pad")
            Stable_Check = true
            if Workspace_Folder.Spawn3.CFrame.Y < 500 then
				repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local looping = true
				spawn(function()
				    while true do
				        game:GetService('RunService').Heartbeat:Wait()
						game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
						cf.CFrame = Workspace_Folder.Spawn3.CFrame * CFrame.new(-1*(Workspace_Folder.Spawn3.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
						if not looping then break end
				    end
				end)
				spawn(function() while looping do wait(.1) game.Players:Chat('unpunish me') end end)
				wait(0.3)
				looping = false
				game.Players:Chat("tp me "..playername)
				wait(0.2)
				game.Players:Chat("respawn me")
				wait(0.2)
            end
            wait(0.5)
            Stable_Check = false
            logn("{Move.lua} Done Moving Admin Reset Pad")
        else
            logn("{Move.lua} Already Moving, Please Wait")
        end
	end
	
	if string.sub(msg:lower(), 0, 13) == prefix.."findresetpad" then
		local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		cf.CFrame = Admin_Folder.Regen.CFrame
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."nok" then
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump1.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump2.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump3.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump4.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump5.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump6.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump7.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump8.TouchInterest:destroy()
		game:GetService("Workspace").Terrain["_Game"].Workspace.Obby.Jump9.TouchInterest:destroy()
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."wkick" then
		local name = string.sub(msg:lower(), 8)
		Wwkicking = name
		wkicking = true
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."disablerc" then
		logn("Click 1 RC will now be disabled for EVERYONE!")
		game.Players:Chat("gear me 0000000000000000004842207161")
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."whitelist" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 12)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Whitelist, v.Name)
				logn("Whitelisted "..v.Name)
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."ignore" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 9)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Ignore, v.Name)
				logn("Ignoring "..v.Name)
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."unignore" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(ignore) do
					if b == v.Name then
						table.remove(Ignore, a)
						logn("Unignored "..v.Name)
					end
				end
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 12) == prefix.."unwhitelist" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 14)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Whitelist) do
					if b == v.Name then
						table.remove(Whitelist, a)
						logn("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."admin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 8)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				table.insert(Admin, v.Name)
				logn("Whitelisted "..v.Name)
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."unadmin" then
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 10)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				user = v.Name
				for a,b in pairs(Admin) do
					if b == v.Name then
						table.remove(Admin, a)
						logn("Unwhitelisted "..v.Name)
					end
				end
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."allpads" then
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i, pad in pairs(pads) do
			local allpads = coroutine.create(function()
				pad.PrimaryPart = pad:FindFirstChild("Head")
				local pos = pad.PrimaryPart.CFrame
				pad.PrimaryPart.CanCollide = false
				pad:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait(0)
				pad:SetPrimaryPartCFrame(pos)
				pad.PrimaryPart.CanCollide = true
			end)
			coroutine.resume(allpads)
		end
	end
	
	if string.sub(msg:lower(), 0, 5) == prefix.."cmds" then
		logn("Click F9 for the commands list")
		print(prefix.."tesk (plr) -- Crash/lag someone (recmed to use with bok)")
		print(prefix.."stop -- Stop tesk spammer/normal spammer xd")
		print(prefix.."clearlogs -- Spam logs")
		print(prefix.."super (cmd) -- Spams a command until logs is filled")
		print(prefix.."spam (cmd) -- Spam and command until ;stop is ran")
		print(prefix.."pads -- Teleport to the pads")
		print(prefix.."prefix (char) -- Change your script prefix and not its self so it will always be ;prefix")
		print(prefix.."crash --gets you the vampire tool and waits until you hold it to spam size me 0.3 xd")
		print(prefix.."reg -- Regen the pads (I think it broke xd)")
		print(prefix.."bind (module) (key) -- Rebind a modules keybind")
		print(prefix.."bok (plr) -- Stop someone from dying from obby bricks AND from getting admin from admin pads for 5-10 minutes :)")
		print(prefix.."trap (plr) -- Stop someone from moving")
		print(prefix.."perm -- (Ex_/AdminJoy Owner gave me dis) grab one pad if you dont have admin and resets pads and grbs one if its full so its like perm xd")
		print(prefix.."nonperm -- (Ex_/AdminJoy Owner gave me dis) Undo the perm effect")
		print(prefix.."clicktp -- Click tp tool")
		print(prefix.."attach -- Attach to objects glitch (PS: Doesnt do your camera for you)")
		print(prefix.."tkick -- Attempt to crash someone")
		print(prefix.."boombox -- boombox ;-;")
		print(prefix.."ds -- Sets up rainbow dancing sword hats (Doesnt inject the script tho xd)")
		print(prefix.."movepads -- Move admin pads")
		print(prefix.."movehouse -- Move the house")
		print(prefix.."moveobbybox -- Move the obby box")
		print(prefix.."moveadmindividers -- Move the admin deviders")
		print(prefix.."moveresetpad -- Super skydive the reset pad")
		print(prefix.."moveobbybricks -- Remove the obby kill bricks")
		print(prefix.."nok -- Learned something today, they remove the touch.")
		print(prefix.."movebuildingbricks -- move the building bricks")
		print(prefix.."wkick (plr) -- Knock someones internet connection to roblox offline for 1-5minutes maybe longer")
		print(prefix.."disablerc -- Disable everyones shiftlock and rightclick xd (UNDOABLE!)")
		print(prefix.."setspawnpoints (plr)-- Set the world spawn!")
		print(prefix.."cmds -- Print all commands to console")
		print(prefix.."allpads -- Take all the admin pads!")
		print(prefix.."lua (Code) -- Inject lua code without need to open your injector! ( Used for modding)")
		print(prefix.."rej -- Rejoin command xd")
		print(prefix.."lagall -- Really powerful 60k spaces one extra char crasher")
		print(prefix.."tesk (plr) -- But better.")
		print(prefix.."findresetpad -- Teleport to the reset pad if its detected")
		print(prefix.."rocket (plr) -- Turn someone into a rocket D:")
		print(prefix.."rrocket (plr) -- Turn someone into a RAINBOW ROCKET D:")
		print(prefix.."bangears (plr) -- Ban someone from using gears!")
		print(prefix.."movebaseplate -- Move the baseplate")
		print(prefix.."alltools -- hold all tools (Premium-Requested)")
		print(prefix.."traplogs -- Fill logs up with the worse chars you can get.")
		print(prefix.."tool (1-5) (Plr) -- Get a tool!")
		print(prefix.."play (1-24) -- Play inbuilt music without an id :D")
		print(prefix.."noob (Plr) -- Turn them into a useless weak noobs D:")
		print(prefix.."rat (Plr) -- Turn them into a rat #RatArmy!")
		print(prefix.."titan (Plr) -- Turn them into a massive titan D:")
		print(prefix.."ohnana -- Nana oh nana~")
		print(prefix.."infjump --Enable inf jump")
		print(prefix.."heykindle (Plr) -- Turn someone into a kindle")
		print(prefix.."disguise -- Generate a random UserID then disguise yourself as them")
		print(prefix.."nitroguy (Plr) -- Turn someone into a nitro rich like guy!")
		print(prefix.."glitchshadow (Plr) -- Turn someone into a GLITCHED SHADOW(Char)")
		print(prefix.."headfloat (Plr) -- Make someones head float D:")
		print(prefix.."haku -- Turn yourself into a dumbass")
		print(prefix.."color all random -- Paint a set of objects a random colour!")
		print(prefix.."color all all (Number) -- Paint a set of objects an optional colour!")
		print(prefix.."color all red (Number) -- Paint a set of objects an optional colour!")
		print(prefix.."color all green (Number) -- Paint a set of objects an optional colour!")
		print(prefix.."color all blue (Number) -- Paint a set of objects an optional colour!")
		print(prefix.."color house random -- Paint a set of objects a random colour!")
		print(prefix.."color obby random -- Paint a set of objects a random colour!")
		print(prefix.."color obbybricks random -- Paint a set of objects a random colour!")
		print(prefix.."playbackspeed (Float) -- Add (Float) to the sound/music pitch (Client-sided)")
		print(prefix.."volume (Float) -- Add (Float) to the sound/music volume (Client-sided)")
		print(prefix.."shortcutchat (Msg) -- Send into the shortcut chat custom test")
		print(prefix.."antidelay (Num) -- Set the antis delays.")
		print(prefix.."padban (Plr) -- Ban seomeon from pads")
		print(prefix.."unpadban (Plr) -- Unban seomeon from pads")
		print(prefix.."control (Plr) -- Allow yourself to control someone(Kinda?)")
		print(prefix.."whitelist (Plr) -- Let someone use your commands")
		print(prefix.."unwhitelist (Plr) -- Remove someones ability to use your commands")
		print(prefix.."admin (Plr) -- Give someone temp perm")
		print(prefix.."unadmin (Plr) -- Remove someones temp perm")
		print(prefix.."fixbp (Plr) -- NEEDS A PLAYER INPUT! fixes the baseplate(SPAM TP TO THE PERSON YOU PUT IN FIXBP (PLR) TO REPLACE THE PAD MULTIPLE TIMES!")
		print(prefix.."house -- Teleport to the house")
		print(prefix.."spawn -- Teleport to spawn2")
		print(prefix.."color all original -- Skidded from Oofkohls took fucking hours to port over to shortcut-")
		print(prefix.."fps -- Enable an fps booster")
		print(prefix.."ignore -- Ignore them and let them attach to objects also enables antikill and antijail xd")
		print(prefix.."unignore -- removes them from the ignore list")
		print(prefix.."skydive -- Skydives you without admin")
		print(prefix.."rrej -- Rejoin a random server WITHOUT THE SHORTCUT HUB!")
		print(prefix.."sch -- Rejoin a random kohls server(WIP)")
		print(prefix.."getpos -- Print position to CHAT.")
		print("(New) "..prefix.."sm (Msg) -- Talk as the server! (HintGUI)")
		print("")
		print("----- Main commands(Recm) -----")
		print(prefix.."togglenames -- Anti/Main modules list (run this for the main modules in /console)")
		print(prefix.."toggle (AntiName) -- Toggle an anti/main module")
		print(prefix.."upme -- Unpunish yourself if your not an admin xd")
		print(prefix.."shutdown -- Shutdown the server")
		print(prefix.."srj -- Rejoin the smallest server shortcut can find")
		print(prefix.."rjg (Num) -- Rejoin a random server with that set value of players inside of it")
		print("")
		print("----- Modded commands -----")
		for i,v in pairs(api_commands) do
			print(prefix..api_commands[i])
		end
		print("")
		print("Credits to these people for code")
		print("Impuritex#5719 for the rrej cmd")
		print("")
		print("----- Versions info -----")
		print("v0.14.1 -- Added mods so you can expand to shortcut also added new commands")
		print("v0.13.1 -- Added "..prefix.."rrej for faster rejoining also added a new whitelist type (ignore/unignore) made for antis to give someone antikill and antijail")
		print("v0.12.3 -- added a protection msg fixed some antis redid bangears its now "..prefix.."bangears (plr) and fixed up antiattach")
		print("v0.12.2 -- Finished importing shortcut hub")
		print("v0.12.1 -- Added "..prefix.."color all original bruh please use it xd also added "..prefix.."shutdown & Shortcut hub")
		print("v0.11.2 -- Added a few new commands fixed bugs also added antivoid")
		print("v0.11.1 -- Added "..prefix.."whitelist/unwhitelist(REJOIN SUPPORTED) also added "..prefix.."admin/unadmin(REJOIN SUPPORTED) dont remember what else i added xD")
		print("v0.10.3 -- Renamed "..prefix.."noobbykill to "..prefix.."nok also added two new OP commands(RESETS PADS)")
		print("v0.10.2 -- Added "..prefix.."toggle antiattach also fixed up "..prefix.."toggle padsenforcement")
		print("v0.10.1 -- Added "..prefix.."toggle padsenforcement also fixed up "..prefix.."shortcutchat")
		print("v0.9.5 -- Fixed the massive delay issue xd also added a new command")
		print("v0.9.4 -- Added new SELFBOT! enable via "..prefix.."toggle everyonecommands PREFIX IS -! self bot has a messages per second counter btw also shortcutchat is now a thing")
		print("v0.9.3 -- Added antilogs and superlogs(See every message, "..prefix.."togglenames)")
		print("v0.9.2 -- Fixed a bug with a command that tried to run "..prefix.."lagall plus added changing prefix support in "..prefix.."cmds")
		print("v0.9.1 -- Mainly an update for adding anti's xd (Free premium) (FIXED lagall!)")
	end -- Players.Character.Humanoid.JumpPower = 1000
	
	if string.sub(msg:lower(), 0, 7) == prefix.."set jp" then
		local Power = tonumber(string.sub(msg:lower(), 9))
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Power
	end
	
	if string.sub(msg:lower(), 0, 3) == prefix.."sm" then
		local box = string.sub(msg:lower(), 5)
		hint("Server message", box)
	end
	
	if string.sub(msg:lower(), 0, 11) == prefix.."set lagall" then
		local Power = tonumber(string.sub(msg:lower(), 15)) -- get the power amount as an int.
		logn("Power is now being set to "..string.sub(msg:lower(), 15))
		logn("Calculating, please wait.")
		local str1 = ""
		for i = Power,1,-1 do 
			str1 = str1..onekspaces.."g"
		end
		crashall_Text = str1
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."antidelay" then
		antidelay = tonumber( string.sub(msg:lower(), 12))
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."color all all" then
		local Num = tonumber(string.sub(msg:lower(), 16))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			coroutine.wrap(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(Num,Num,Num)
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)()
		end
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."color all red" then
		local Num = tonumber(string.sub(msg:lower(), 16))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			coroutine.wrap(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(Num,0,0)
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)()
		end
	end
	
	if string.sub(msg:lower(), 0, 17) == prefix.."color all green" then
		local Num = tonumber(string.sub(msg:lower(), 18))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			coroutine.wrap(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(0,Num,0)
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)()
		end
	end
	
	if string.sub(msg:lower(), 0, 15) == prefix.."color all blue" then
		local Num = tonumber(string.sub(msg:lower(), 17))
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			coroutine.wrap(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(0,0,Num)
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)()
		end
	end
	
	if string.sub(msg:lower(), 0, 17) == prefix.."color all random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end
	
	if string.sub(msg:lower(), 0, 19) == prefix.."color house random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
		for i,v in pairs(Workspace_Folder["Basic House"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end
	
	if string.sub(msg:lower(), 0, 24) == prefix.."color obbybricks random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
        for i, v in pairs(Workspace_Folder["Obby"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end
	
	if string.sub(msg:lower(), 0, 18) == prefix.."color obby random" then
		logn("This is a strip of Color3 it works its way through every block SLOWLY want it to keep changing then ;spam it")
		game.Players:Chat("gear me 00000000000000000018474459")
		wait(1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
		wait(0.25)
        for i, v in pairs(Workspace_Folder["Obby Box"]:GetChildren()) do
			spawn(function()
				if v:IsA("Part") then
					local Partse =
					{
						["Part"] = v,
						["Color"] = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
					}
					game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild("Remotes").ServerControls:InvokeServer("PaintPart", Partse)
				end
			end)
		end
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."tool 1" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000079446473")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."tool 2" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 000000000000000000236438668")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."tool 3" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000018474459")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."tool 4" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 000000000000000000124126528")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."tool 5" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("gear "..player.." 00000000000000000035683911")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 1" then
		game.Players:Chat("music 0000000000000000001374378794")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 2" then
		game.Players:Chat("music 000000000000000000419365372")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 3" then
		game.Players:Chat("music 0000000000000000002631240760")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 4" then
		game.Players:Chat("music 0000000000000000004904305258")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 5" then
		game.Players:Chat("music 0000000000000000005682636501")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 6" then
		game.Players:Chat("music 0000000000000000004662452515")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 7" then
		game.Players:Chat("music 0000000000000000005648499584")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 8" then
		game.Players:Chat("music 0000000000000000002037521028")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."play 9" then
		game.Players:Chat("music 0000000000000000006215456978")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 10" then
		game.Players:Chat("music 000000000000000000142376088")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 11" then
		game.Players:Chat("music 0000000000000000004907888572")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 12" then
		game.Players:Chat("music 0000000000000000005878555132")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 13" then
		game.Players:Chat("music 0000000000000000002230668518")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 14" then
		game.Players:Chat("music 000000000000000000621545697")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 15" then
		game.Players:Chat("music 0000000000000000002256171111")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 16" then
		game.Players:Chat("music 000000000000000000213336468")
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."alltools" then
	    local tools = game.Players.LocalPlayer.Backpack:GetChildren()
		for i,v in pairs(tools) do
			spawn(function()
				if v:IsA'Tool' then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end)
		end
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 17" then
		game.Players:Chat("music 0000000000000000006079757615")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 18" then
		game.Players:Chat("music 0000000000000000005180097131")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 19" then
		game.Players:Chat("music 0000000000000000005253604010")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 20" then
		game.Players:Chat("music 000000000000000000357357714")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 21" then
		game.Players:Chat("music 0000000000000000005711590979")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 22" then
		game.Players:Chat("music 0000000000000000005008472494")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 23" then
		game.Players:Chat("music 0000000000000000006347294109")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 24" then
		game.Players:Chat("music 0000000000000000005510157925")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."play 25" then
		game.Players:Chat("music 0000000000000000002614260103")
	end
	
	if string.sub(msg:lower(), 0, 10) == prefix.."heykindle" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("char "..player.." 1692633945")
		game.Players:Chat("name "..player.." ")
	end
	
	if string.sub(msg:lower(), 0, 5) == prefix.."haku" then
		local player = string.sub(msg:lower(), 7)
		game.Players:Chat("char "..player.." 1110535975")
		game.Players:Chat("name "..player.." ")
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."nitroguy" then
		local player = string.sub(msg:lower(), 11)
		game.Players:Chat("char "..player.." 10000")
		game.Players:Chat("name "..player.." ")
	end
	
	if string.sub(msg:lower(), 0, 13) == prefix.."glitchshadow" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("char "..player.." 2226928111")
		game.Players:Chat("name "..player.." ")
	end -- GlitchShad0wKin93
	
	if string.sub(msg:lower(), 0, 10) == prefix.."headfloat" then
		local player = string.sub(msg:lower(), 12)
		game.Players:Chat("size "..player.." 0.5")
		wait(0.25)
		game.Players:Chat("bighead "..player)
		wait(0.25)
		game.Players:Chat("unsize "..player)
	end
	
	if string.sub(msg:lower(), 0, 5) == prefix.."upme" then
		game.Players.LocalPlayer.Character:Destroy()
	end
	
	if string.sub(msg:lower(), 0, 13) == prefix.."shortcutchat" then
		game.Players:Chat("handes "..string.sub(msg:lower(), 15))
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."rocket" then
		local player = string.sub(msg:lower(), 9)
		game.Players:Chat("dog "..player)
		wait(0.25)
		game.Players:Chat("size "..player.." 0.3")
	end
	
	if string.sub(msg:lower(), 0, 8) == prefix.."rrocket" then
		local player = string.sub(msg:lower(), 10)
		game.Players:Chat("trail "..player.." rainbow")
		game.Players:Chat("dog "..player)
		wait(0.25)
		game.Players:Chat("size "..player.." 0.3")
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."disguise" then
		local player = string.sub(msg:lower(), 11)
		game.Players:Chat("char "..player.." "..math.random(1000000000, 2147483647))
		game.Players:Chat("name "..player)
	end
	
	if string.sub(msg:lower(), 0, 5) == prefix.."noob" then
		local player = string.sub(msg:lower(), 7)
		game.Players:Chat("char "..player.." 4")
		wait(1)
		game.Players:Chat("size "..player.." 0000000000000000000.8")
		game.Players:Chat("name "..player.." Yellow")
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."rej" then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
	
	if string.sub(msg:lower(), 0, 4) == prefix.."rat" then
		local player = string.sub(msg:lower(),  6)
		game.Players:Chat("char "..player.." 6")
		wait(1)
		game.Players:Chat("hat "..player.." 0000000000000000006203125039")
		game.Players:Chat("name "..player.." Rat")
		game.Players:Chat("size "..player.." 0000000000000000000.8")
		game.Players:Chat("speed "..player.." 00000000000000000026")
	end
	
	if string.sub(msg:lower(), 0, 6) == prefix.."titan" then
		local player = string.sub(msg:lower(),  8)
		game.Players:Chat("char "..player.." 4")
		wait(1)
		game.Players:Chat("skydive "..player)
		game.Players:Chat("paint "..player.." red")
		game.Players:Chat("name "..player.." Titan")
		game.Players:Chat("size "..player.." 0000000000000000005")
		game.Players:Chat("speed "..player.." 00000000000000000024")
		game.Players:Chat("pants "..player.." 0000000000000000001187508947")
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."ohnana" then
		game.Players:Chat("time 0000000000000000000")
		game.Players:Chat("fogend 000000000000000000250")
		game.Players:Chat("disco")
		game.Players:Chat("h Nana oh nana")
		game.Players:Chat(prefix.."play 1")
	end
	
	if string.sub(msg:lower(), 0, 14) == prefix.."playbackspeed" then
		local newPlaybackSpeed = tonumber(string.sub(msg:lower(), 16))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.PlaybackSpeed = newPlaybackSpeed
	end
	
	if string.sub(msg:lower(), 0, 7) == prefix.."volume" then
		local newVolume = tonumber(string.sub(msg:lower(), 9))
		local Sound = game:GetService("Workspace").Terrain["_Game"].Folder.Sound
		Sound.Volume = newVolume
	end
	
	if string.sub(msg:lower(), 0, 9) == prefix.."bangears" then
		game.Players:Chat("gear me 00000000000000000082357101")
		wait(0.28)
		game.Players:Chat(prefix.."alltools")
		wait(0.28)
		names = game.Players:GetChildren()
		local name = string.sub(msg:lower(), 11)
		for i,v in pairs(names) do
			strlower = string.lower(v.Name)
			sub = string.sub(strlower,1,#name)
			if name == sub then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
				wait(0.25)
				local JailPlayer = v.Name
				workspace[game.Players.LocalPlayer.Name].PortableJustice.MouseClick:FireServer(workspace[JailPlayer])
				wait(0.25)
				game.Players:Chat("reset "..v.Name)
			end
		end
	end
	
	if string.sub(msg:lower(), 0, 19) == prefix.."toggle anticrashvg" then
		anticrashVG = not anticrashVG
		logn("anticrashVG is now set to "..tostring(anticrashVG))
	end
	
	if string.sub(msg:lower(), 0, 24) == prefix.."toggle antijailgearban" then
		antijailgearban = not antijailgearban
		logn("antijailgearban is now set to "..tostring(antijailgearban))
	end
	
	if string.sub(msg:lower(), 0, 21) == prefix.."toggle antigrayscale" then
		antigrayscale = not antigrayscale
		logn("antigrayscale is now set to "..tostring(antigrayscale))
	end
	
	if string.sub(msg:lower(), 0, 16) == prefix.."toggle antikill" then
		antikill = not antikill
		logn("antikill is now set to "..tostring(antikill))
	end
	
	if string.sub(msg:lower(), 0, 17) == prefix.."toggle antijail" then
		antijail = not antijail
		logn("antijail is now set to "..tostring(antijail))
	end
	
	if string.sub(msg:lower(), 0, 19) == prefix.."toggle mymusiconly" then
		mymusiconly = not mymusiconly
		logn("mymusiconly is now set to "..tostring(mymusiconly))
	end
	
	if string.sub(msg:lower(), 0, 16) == prefix.."toggle antilogs" then
		antilogs = not antilogs
		logn("antilogs is now set to "..tostring(antilogs))
	end
	
	if string.sub(msg:lower(), 0, 13) == prefix.."toggle mmoid" then
		mymusiconly_ID = tonumber(string.sub(msg:lower(), 15))
		logn("mymusiconly_id is now set to "..tostring(mymusiconly_ID))
		mymusiconly = true
	end
	
	if string.sub(msg:lower(), 0, 17) == prefix.."toggle superlogs" then
		Superlogs = not Superlogs
		logn("Superlogs is now set to "..tostring(Superlogs))
	end
	
	if string.sub(msg:lower(), 0, 23) == prefix.."toggle padsenforcement" then
		padsEnforcement = not padsEnforcement
		logn("padsEnforcement is now set to "..tostring(padsEnforcement))
	end
	
	if string.sub(msg:lower(), 0, 24) == prefix.."toggle everyonecommands" then
		everyonecommands = not everyonecommands
		logn("everyonecommands is now set to "..tostring(everyonecommands))
	end
	
	if string.sub(msg:lower(), 0, 18) == prefix.."toggle antiattach" then
		antiattach = not antiattach
		logn("antiattach is now set to "..tostring(antiattach))
	end
	
	if string.sub(msg:lower(), 0, 18) == prefix.."toggle antivoid" then
		antivoid = not antivoid
		logn("antivoid is now set to "..tostring(antivoid))
	end
	
	if string.sub(msg:lower(), 0, 12) == prefix.."togglenames" then
		print("----- Anti's -----")
		print("anticrashvg (anticrashVG)"..tostring(anticrashVG))
		print("antijailgearban "..tostring(antijailgearban))
		print("antigrayscale "..tostring(antigrayscale))
		print("antikill "..tostring(antikill))
		print("antijail "..tostring(antijail))
		print("mymusiconly "..tostring(mymusiconly))
		print("mmoid (mymusiconly_ID) "..tostring(mymusiconly_ID))
		print("antilogs "..tostring(antilogs))
		print("superlogs (Superlogs)"..tostring(Superlogs))
		print("everyonecommands "..tostring(everyonecommands))
		print("padsenforcement (padsEnforcement)"..tostring(padsEnforcement))
		print("antiattach"..tostring(antiattach))
		print("antivoid"..tostring(antivoid))
		print("")
	end
	-- loadstring(game:HttpGet("https://pastebin.com/raw/BnccXAFV", true))()
end)

function regen()
	fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
end

local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
	if antikick == true then
		for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
			if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "EFFECTGUIBLIND" or v.Name == "HintGUI" then
				v:Destroy()
			end
		end
		for i,v in pairs(game.Workspace.Terrain["_Game"].Folder:GetDescendants()) do
			if v.Name == "Message" then
				v:Destroy()
			end
		end
	end
end)

function transformToColor3(col) -- Oofkohls
	local r = col.r
	local g = col.g
	local b = col.b
	return Color3.new(r,g,b);
end

spawn(function()
	while true do
		wait()
		if teskking == true then
			game.Players:Chat("pm "..Wteskking.." "..oofkohlsPmSpam)
		end
	
		if spamming == true then
			game.Players:Chat(Wspamming)
		end
	
		if wkicking == true then
			game.Players:Chat("gear "..Wwkicking.." 000000000000000000253519495")
		end
	
		if crashall == true then
			game.Players:Chat("h "..crashall_Text)
		end
		 
		if anticrashVG == true then
			if allowcrash == false then
				for i, player in pairs(game:GetService("Players"):GetPlayers()) do
					if player.Character then
						if player.Character:FindFirstChild("VampireVanquisher") then
							local plrname = player.Name
							game.Players:Chat(("ungear "..plrname))
							game.Players:Chat(("unsize "..plrname))
							if AllowMessages == true then
								if allowads == true then
									game.Players:Chat("h "..plrname.." failed to crash the server (Shortcut)")
								else
									game.Players:Chat("h "..plrname.." failed to crash the server")
								end
							end
							wait(0.18)
						end
						if player.Character:FindFirstChild("HumanoidRootPart") then
							if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
								local plrname = player.Name
								game.Players:Chat(("reset "..plrname))
								game.Players:Chat(("unclone "..plrname))
								if AllowMessages == true then
									if allowads == true then
										game.Players:Chat("h "..plrname.." failed to crash the server (Shortcut)")
									else
										game.Players:Chat("h "..plrname.." failed to crash the server")
									end
								end
								wait(0.18)
							end
						end
					end
				end
			end
		end
		
		if antijailgearban == true then
			if game.Players.LocalPlayer.Character:FindFirstChild("Part") then
				game.Players.LocalPlayer.Character:FindFirstChild("Part"):Destroy()
				game.StarterGui:SetCoreGuiEnabled("Backpack",true)
				wait(0.18)
				game.Players:Chat("speed me 16")
				game.Players:Chat(prefix.."set jp 50")
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("h Cant remove my gears xd. (Shortcut)")
					else
						game.Players:Chat("h Cant remove my gears xd.")
					end
				end
			end
		end
	end
end)

binarylist = {
	['0'] = '0000',
	['1'] = '0001',
	['2'] = '0010',
	['3'] = '0011',
	['4'] = '0100',
	['5'] = '0101',
	['6'] = '0110',
	['7'] = '0111',
	['8'] = '1000',
	['9'] = '1001',
	['10']= '1010',
	['11']= '1011',
	['12']= '1100',
	['13']= '1101',
	['14']= '1110',
	['15']= '1111'
}

function tobinary(num) -- While great it maxes at 15 D:
	if num > 15 then
		error([[-- Shortcut mods error --
Number "]]..num..[[" is way to big to create a
4bit binary number from
(Not reportable)
ID #0011 (4-bit Binary Number)
-- Shortcut mods error --]])
	else
		return binarylist[tostring(num)]
	end
end

spawn(function()
	function Backup() -- In work
		data = ""
		if antijailgearban == true then
			data = "1"
		else
			data = "0"
		end
		if antigrayscale == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antikill == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antijail == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antikill == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if Superlogs == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if everyonecommands == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if padsEnforcement == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antiattach == true then
			data = data.."1"
		else
			data = data.."0"
		end
		if antivoid == true then
			data = data.."1"
		else
			data = data.."0"
		end
		
		return data
	end
end)

apis = {}
api_commands = {}
apis_cmdPref = {}
apis_Credits = {}
apis_Version = {}
apis_EncryptionKeys = {}

spawn(function()
	-- Mods
	-- Mods
	
	function hint(plr, msg)
		game.Players:Chat([[h 




]]..plr..[[: ]]..msg..[[





]])
	end
	
	function wifiFix()
		wait(0.1)
	end

	function CreateAPI(modApi, cmdPref, credits, version)
		local foundApi = false
		for i,v in pairs(apis) do
			if apis[i] == modApi then
				foundApi = true
			end
		end
		if foundApi == true then
			error([[-- Shortcut mods error --
found valid API "]]..modApi..[[" please check if it exists
else report this as an error
ID #0010 (4-bit Binary Number)
-- Shortcut mods error --]])
		elseif foundApi == false then
			table.insert(apis, modApi) -- Store API's main name
			table.insert(apis_cmdPref, cmdPref) -- Store what you use to call API
			table.insert(apis_Credits, credits) -- Store API's credits
			table.insert(apis_Version, version) -- Store API's version
			table.insert(apis_EncryptionKeys, [[0000 0000 0000 0000]]) -- Store API's version
		end
	end

	function CreateCommand(modApi, cmdPref, lowerSup, func)
		local foundApi = false
		local l = 0
		for i,v in pairs(apis) do
			if apis[i] == modApi then
				foundApi = true
				l = i
			end
		end
		if foundApi == true then
		table.insert(api_commands, apis_cmdPref[l].." "..cmdPref) -- Store command!
			game.Players.LocalPlayer.Chatted:Connect(function(msg)
				if lowerSup == true then
					if msg:lower() == prefix..apis_cmdPref[l].." "..cmdPref then
						func();
					end
				elseif lowerSup == false then
					if msg == prefix..apis_cmdPref[l].." "..cmdPref then
						func();
					end
				end
			end)
		elseif foundApi == false then
			error([[-- Shortcut mods error --
Cant find valid API "]]..modApi..[[" please check if it exists
else report this as an error
ID #0001 (4-bit Binary Number)
-- Shortcut mods error --]])
		end
	end
	-- Mods
	-- Mods
	
	wait(0.1)
	
	local API = "Shortcut"
	local data = {tobinary(0), tobinary(1), tobinary(2), tobinary(3), tobinary(4), tobinary(5), tobinary(6), tobinary(7), tobinary(8), tobinary(9), tobinary(10), tobinary(11), tobinary(12), tobinary(13), tobinary(14), tobinary(15)}
	
	spawn(function() -- Default mod library for testing
		CreateAPI(API, "sch", "SnowClan_8342, for Shortcut!", "v0.1")
		CreateCommand(API, "modlist", true, function() -- ;sch modlist
			print("----- API list (Info) -----")
			for i,v in pairs(apis) do
				print(apis[i].." | "..apis_Credits[i].." | "..apis_Version[i].." | "..apis_cmdPref[i])
			end
		end)
		CreateCommand(API, "reload", true, function() -- ;sch modlist
			logn("Reloading API...")
			API = nil
			data = nil
			
			wifiFix() -- Having some router problems so i let it rest
			
			API = "Shortcut"
			data = {tobinary(0), tobinary(1), tobinary(2), tobinary(3), tobinary(4), tobinary(5), tobinary(6), tobinary(7), tobinary(8), tobinary(9), tobinary(10), tobinary(11), tobinary(12), tobinary(13), tobinary(14), tobinary(15)}
		end)
	end)
end)

spawn(function()
	while true do
		wait(5)
		for i, player in pairs(game:GetService("Players"):GetPlayers()) do
			if player.Character:FindFirstChild("VampireVanquisher") then
				if player.Character.HumanoidRootPart.Size.Y <= 0.3 then
					gotoShortcutHub("Server crashed by vampiretool (Maybe?)", 15) -- Go to shortcuts main hub for rejoining
				end
			end
		end
	end
end)

spawn(function()
	while true do
		game:GetService("RunService").RenderStepped:Wait()
		if antigrayscale == true then
			if game.Workspace.CurrentCamera:FindFirstChild("GrayScale") then
				game.Workspace.CurrentCamera:FindFirstChild("GrayScale"):Destroy()
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("h Cant Grayscale me. (Shortcut)")
					else
						game.Players:Chat("h Cant Grayscale me.")
					end
				end
			end
		end
		
		if antikill == true then
			for q,player in pairs(game.Players:GetChildren()) do
				for i,v in pairs(Ignore) do
					if player.Name == Ignore[i] then
						if player.Character.Humanoid.Health == 0 then
							game.Players:Chat("reset "..Ignore[i])
						end
					end
				end
			end
			if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
				game.Players:Chat("reset me")
			end
		end
		
		if antijail == true then
			for i,plr in pairs(Ignore) do
				if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(plr.."'s jail") then
					game.Players:Chat("unjail "..string.sub(plr,0,4):lower())
				end
			end
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild(game.Players.LocalPlayer.Name.."'s jail") then
				game.Players:Chat("unjail me")
			end
		end
		
		if mymusiconly == true then
			if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				if game:GetService("Workspace").Terrain["_Game"].Folder.Sound.SoundId == "http://www.roblox.com/asset/?id="..mymusiconly_ID then
				else
					game.Players:Chat("music "..mymusiconly_ID)
					if AllowMessages == true then
						if allowads == true then
							game.Players:Chat("h Automusic active. (Shortcut)")
						else
							game.Players:Chat("h Automusic active.")
						end
					end
				end
			end
			if not game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
				game.Players:Chat("music "..mymusiconly_ID)
				if AllowMessages == true then
					if allowads == true then
						game.Players:Chat("h Automusic active. (Shortcut)")
					else
						game.Players:Chat("h Automusic active.")
					end
				end
			end
		end
	end
end)

function start(plr)
	plr.Chatted:Connect(function(msg)
		spawn(function()
			for i,player in pairs(Admin) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == ":" then
						command = ""
						game.Players:Chat("pm "..plr.Name.." your command Contains a : at the start of it, please dont.")
					end
					if string.sub(command, 1, 1) == prefix then
						command = ""
						game.Players:Chat("pm "..plr.Name.." You cant use 'ShortCutCommands class' sorry!")
					end
					
					if string.sub(command, 1, 1) == "m" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'message' sorry!")
					elseif string.sub(command, 1, 7) == "message" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'message' sorry!")
					elseif string.sub(command, 1, 2) == "pm" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'priplratemessage' sorry!")
					elseif string.sub(command, 1, 4) == "hint" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'hint' sorry!")
					elseif string.sub(command, 1, 1) == "h" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'hint' sorry!")
					elseif string.sub(command, 1, 4) == "logs" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'logs' sorry!")
					elseif string.sub(command, 1, 4) == "cmds" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'commands' sorry!")
					elseif string.sub(command, 1, 8) == "commands" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'commands' sorry!")
					elseif string.sub(command, 1, 9) == "musiclist" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'musiclist' sorry!")
					elseif string.sub(command, 1, 11) == "packagelist" then
						game.Players:Chat("pm "..plr.Name.." You cant use 'packagelist' sorry!")
					else
						game.Players:Chat(command)
					end
				end
			end
		end)
		
		spawn(function()
			for i,player in pairs(Whitelist) do
				if plr.Name == player then
					local command = string.gsub(msg:lower(), "me", plr.Name)
					if string.sub(command, 1, 1) == prefix then
						if string.sub(command, 2, 5) == "move" then
							game.Players:Chat("pm "..plr.Name.." Cant move the core player sorry!")
						else
							game.Players:Chat(command)
						end
					end
				end
			end
		end)
	
		spawn(function()
			if string.sub(msg:lower(),0,8) == "unpunish" or string.sub(msg:lower(),0,9) == ":unpunish" or string.sub(msg:lower(),0,3) == "sit" or string.sub(msg:lower(),0,4) == ":sit" or string.sub(msg:lower(),0,4) == "stun" or string.sub(msg:lower(),0,5) == ":stun" then
				if antiattach == true then
					local killoff = true
					for i,ignore in pairs(Ignore) do
						if ignore[i] == plr.Name then
							killoff = false
						end
					end
					if plr.Name == game.Players.LocalPlayer.Name then
						killoff = false
					end
					if killoff == true then
						game.Players:Chat("reset "..plr.Name)
					end
				end
			end
		end)
		
		spawn(function()
			if Superlogs == true then
				print("["..plr.Name.."]: "..msg)
			end
			if string.sub(msg,1,6) == "handes" then
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
					Text = "["..plr.Name..getTag().."]: "..string.sub(msg,8);
					TextStrokeTransparency = 0.75;
					Font = Enum.Font.SourceSansBold;
					Color = Color3.new(128,0,0);
					FontSize = Enum.FontSize.Size18;
				})
			end
		end)
		if msg:lower() == "logs" or msg:lower() == ":logs" then
			local player = plr.Name
			if antilogs == true then
				if player == game.Players.LocalPlayer.Name then
					game.Players:Chat("ff No antilogs for you!")
				else
					for i = 1,100 do
						game.Players:Chat("h Lol "..player.." tried to use logs xD!")
					end
				end
			end
		else
			if everyonecommands == true then
				if msg:lower() == "-cmds" then
					say(" -cmds -- Get commands!")
					say(" -order (plr) -- Order a drink!")
					say(" -leaderboard -- All MPS's stored")
					say(" -quote -- Grab a random quote!")
					say(" -mps -- Messages per second! get your messages per second ;)")
				end
				if string.sub(msg:lower(),1,6) == "-order" then
					say(plr.Name.." just ordered "..tostring(math.random(1,5)).." "..drinks[math.random(1,#drinks)].."'s to his friend "..string.sub(msg:lower(),8))
				end
				if msg:lower() == "-quote" then
					say(Quotes[math.random(1,#Quotes)])
				end
				if msg:lower() == "-mps" then
					for i,v in pairs(MPS_Users) do
						if v == plr.Name then
							say("Your best MPS was "..MPS_Max[i].." (Even if no one can see the message it will still count)")
						end
					end
				end
				if msg:lower() == "-leaderboard" then
					for i,v in pairs(MPS_Users) do
						say(MPS_Users[i].." Current MPS: "..MPS[i].." MPS: "..MPS_Max[i])
					end
				end
			end
		end
		found = false
		for i,v in pairs(MPS_Users) do
			if v == plr.Name then
				found = true
				MPS[i] = MPS[i] + 1
			end
		end
		if found == false then
			table.insert(MPS_Users, plr.Name)
			table.insert(MPS, 0)
			table.insert(MPS_Max, 0)
		end
	end)
end

function getTag()
	local Tag = game.Players.LocalPlayer.UserId
	Tag = string.gsub(Tag, "0", "9")
	Tag = string.gsub(Tag, "1", "8")
	Tag = string.gsub(Tag, "2", "7")
	Tag = string.gsub(Tag, "3", "6")
	Tag = string.gsub(Tag, "4", "5")
	Tag = string.gsub(Tag, "5", "4")
	Tag = string.gsub(Tag, "6", "3")
	Tag = string.gsub(Tag, "7", "2")
	Tag = string.gsub(Tag, "8", "1")
	Tag = string.gsub(Tag, "9", "0")
	return string.sub(Tag,0,4)
end

-- SirLos1
Pad_Ban = {"Gan_3140"} -- People who are banned from pads
Whitelist = {} -- Whitelisted players
Admin = {} -- People you gave temp perm

Ignore = {game.Players.LocalPlayer.Name} -- Ignored from some antis (Antiattch)

-- Self bot stuff dont edit
-- Self bot stuff dont edit
MPS_Users = {}
MPS = {}
MPS_Max = {}
-- Self bot stuff dont edit
-- Self bot stuff dont edit

drinks = {"Coke","Milk","Sprit","Cognac","Coffee","Chocolate milk","Hot Chocolate","Ice cream"}

for i,v in pairs(game.Players:GetChildren()) do
	start(v)
end

function say(msg)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

spawn(function()
	while true do
		for i,v in pairs(MPS_Users) do
			if MPS[i] >= MPS_Max[i] then
				MPS_Max[i] = MPS[i]
				MPS[i] = 0
			end
		end
		wait(1)
	end
end)

Spawn(function()
	while true do
		game:GetService("RunService").Stepped:Wait()
		local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		if antivoid == true then
			if CF.Y < 0 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(CF.X, 3, CF.Z))
			end
		end
	end
end) -- Spawn 2 position CFrame.new(Vector3.new(-41, 3.7, -15.589996337891)) -28.6829948, 8.2299995, 66.4913253

local CancelTeleport = false

function gotoShortcutHub(reason, delay)
	CancelTeleport = false
	if AllowTeleportsToShortcutHub == true then
		logn("Write anything to cancel teleport")
		logn("Teleporting to ShortcutHub | Reason : "..reason.." | Please wait "..delay.." seconds.")
		wait(delay)
		if CancelTeleport == false then
			logn("Please wait while our servers teleport you there.")
			game:GetService("TeleportService"):Teleport(6418152615,game.Players.LocalPlayer)
		elseif CancelTeleport == false then
			logn("Cancled teleport (Ty :D)")
		end
	end
end

Spawn(function()
	while true do
		
		for i,player in pairs(Pad_Ban) do
			for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
				if pad.Name == player.."'s admin" then
					game.Players:Chat("respawn "..player)
					game.Players:Chat("h Sorry "..player.." your banned from pads")
					regen()
				end
			end
		end
		
		if padsEnforcement == true then
			for i,v in pairs(game.Players:GetChildren()) do
				local times = 0
				for i,pad in pairs(Admin_Folder.Pads:GetDescendants()) do
					if pad.Name == v.Name.."'s admin" then
						times = times + 1
					end
				end
				if times >= 2 then
					game.Players:Chat("h Pads reset because "..v.Name.." tried to take them all!")
					game.Players:Chat("fling "..v.Name)
					regen()
				end
			end
		end
		wait(.18)
	end
end)

if ShortcutProtectedMSG == true then
while true do print('nigger') end
end


Spawn(function()
	mods()
end)

wait(0.25)

Spawn(function()
	startupScripts()
end)