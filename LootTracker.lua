local f = CreateFrame("Frame")
local BOEs = {
	"Dessicated Soulrender Slippers",
	"Cord of Unhinged Malice",
	"Jungle Assassin's Footpads",
	"Flayed Demonskin Belt",
	"Unhallowed Voidlink Boots",
	"Cursed Demonchain Belt",
	"Cruel Hope Crushers",
	"Girdle of Demonic Wrath"
}
f:RegisterEvent("CHAT_MSG_LOOT")
f:SetScript("OnEvent", function(self, event, ...)
	local message = ...
	local firstIndex = message:find(" ")
	local player = message:sub(0, firstIndex-1)
	for k, v in pairs(BOEs) do
		if message:find(v) then
			SendChatMessage(player .. " looted a BoE: " .. v, "RAID_WARNING", nil, nil)
		end
	end
end)