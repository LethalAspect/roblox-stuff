--[[ ~ Credits ~
	Main Script: Aim
	Colors & Roles: 7n7o
	Chat hook: Riptxde
--]]

if not game:IsLoaded() then
	game.Loaded:Wait()
end

if not syn_checkcaller and not PROTOSMASHER_LOADED then error'Unsupported exploit.' end

if cross_settings then
	myRoles = cross_settings.myRoles
	myColor = cross_settings.myColor
	RGB_ENABLED = cross_settings.RGB_ENABLED
	WS_URL = cross_settings.WS_URL
	ENCRYPTION_KEY = cross_settings.ENCRYPTION_KEY
end

if not WS_URL then error'Set the required global variables.' end
local socket
if syn_checkcaller then
	socket = syn.websocket.connect(WS_URL)
elseif PROTOSMASHER_LOADED then
	socket = WebSocket.new(WS_URL)
	socket:ConnectToServer()
end

local StarterGui = game:GetService("StarterGui")
local LP = game:GetService("Players").LocalPlayer

getProperties = {
	Color = Color3.fromRGB(255,255,0); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}

sendProperties = {
	Color = myColor; 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}

local iv = "h369ZWd@S2Y5U%Z!"

function encrypt(msg)
	if syn_checkcaller then
		return syn.crypt.custom.encrypt("aes-cbc", msg, ENCRYPTION_KEY, iv)
	elseif PROTOSMASHER_LOADED then
		return AES.Encrypt(msg, ENCRYPTION_KEY, iv)
	end
end

function decrypt(msg)
	if syn_checkcaller then
		return syn.crypt.custom.decrypt("aes-cbc", msg, ENCRYPTION_KEY, iv)
	elseif PROTOSMASHER_LOADED then
		return AES.Decrypt(msg, ENCRYPTION_KEY, iv)
	end
end

function toTable(s)
	if not s:find '^%s*{' then return nil end
	if s:find '[^\'"%w_]function[^\'"%w_]' then
		return nil
	end
	s = 'return '..s
	local chunk = loadstring(s,'tbl','t',{})
	if not chunk then return nil end
	local ok,ret = pcall(chunk)
	if ok then return ret
	else
		return nil
	end
end

function getMessage(enc)
	if enc == "Connected" then
		return enc
	end
	local message = toTable(decrypt(enc))
	return message
end

function sendMessage(Message)
	socket:Send(encrypt(Message))
end

function invite()
	Server = tostring(game.PlaceId)..":"..tostring(game.JobId)
	sendMessage("{Server = '"..Server.."', Name = 'SERVER',Roles = {}, Message = '"..LP.Name.." has invited you to join their server! Type !join to join.', Color = Color3.fromRGB(255, 255, 0)}")
end

local ServerToJoin = ""
function join()
	lol = ServerToJoin:split":"
	game:GetService("TeleportService"):TeleportToPlaceInstance(tonumber(lol[1]), lol[2], LP)
end

function constructRoles(r)
	local a = ""
	for i, v in pairs(r) do
		a = a.."["..v.."] "
	end
	return a
end

function tostringr(r)
	local a = "{"
	for i, v in pairs(r) do
		a = a.."'"..v.."', "
	end
	return a:sub(1, #a-2).."}"
end

local enabled = false
function chat(msg)
	if enabled then
		sendProperties.Text = construct({Name =tostring(LP.Name),Roles = myRoles, Message = msg, Color = tostring(myColor)})
		StarterGui:SetCore("ChatMakeSystemMessage", sendProperties)
		sendMessage("{Name = '"..tostring(LP.Name).."',Roles = "..tostringr(myRoles)..", Message = '"..msg.."', Color = Color3.new("..tostring(myColor)..")}")
	end
end

function construct(messageTbl)
	if messageTbl.Server then
		ServerToJoin = messageTbl.Server
	end
	local endm = ""
	endm = endm..constructRoles(messageTbl.Roles)
	endm = endm.."["..messageTbl.Name.."]: "
	endm = endm..messageTbl.Message
	getProperties.Color = messageTbl.Color
	return endm
end

local lastmessage = {}
local received = function(msg)
	lastmessage = getMessage(msg)
	if not lastmessage then return end
	getProperties.Text = (type(lastmessage) == "string" and "Connected" or construct(lastmessage))
	--[[if type(lastmessage) == "string" then
		getProperties.Text = "Connected"
	else
		getProperties.Text = construct(lastmessage)
	end]]
	StarterGui:SetCore("ChatMakeSystemMessage", getProperties)
end
if syn_checkcaller then
	@@ -164,11 +165,11 @@ scroller.ChildAdded:Connect(function(frame)
			if frame.TextLabel.Text == construct(lastmessage) then
				if lastmessage.Roles[1] == "RGB" then
					spawn(function()
						while wait() do
							for h = 0, 1, 1 / 300 do
								frame.TextLabel.TextColor3 = Color3.fromHSV(h,1,1)
								wait()
							end
						end
					end)
				end
	@@ -179,13 +180,8 @@ end)

function toggle()
	enabled = not enabled
	getProperties.Color = enabled and Color3.fromRGB(0, 230, 0) or Color3.fromRGB(230, 0, 0)
	getProperties.Text = "[SERVER] Sending " .. (enabled and "Enabled" or "Disabled")
	StarterGui:SetCore("ChatMakeSystemMessage", getProperties)
end

	@@ -233,4 +229,4 @@ end)
BindHook['Event']:Connect(function()
	CBar = LP['PlayerGui'].Chat['Frame'].ChatBarParentFrame['Frame'].BoxFrame['Frame'].ChatBar
	HookChat(CBar)
end)
	local Method, Args = getnamecallmethod(), {...}
	if rawequal(tostring(Args[1]),'ChatBarFocusChanged') and rawequal(Args[2],true) then 
		if LP['PlayerGui']:FindFirstChild('Chat') then
			BindHook:Fire()
		end
	end
	return NC(...)
end)

BindHook['Event']:Connect(function()
	CBar = LP['PlayerGui'].Chat['Frame'].ChatBarParentFrame['Frame'].BoxFrame['Frame'].ChatBar
	HookChat(CBar)
end)
