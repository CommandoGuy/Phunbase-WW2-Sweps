PHUNBASE = PHUNBASE or {}
PHUNBASE.CODWW2 = PHUNBASE.CODWW2 or {}

if !CLIENT then return end

AddCSLuaFile()

CreateClientConVar("pb_codww2_rig", 1, true, false)
CreateClientConVar("pb_codww2_rig_use_gmod_hands", 0, true, false)

PHUNBASE.CODWW2.RIGS = {}

PHUNBASE.CODWW2.RIG_ADD = function(name, model)
	if PHUNBASE.CODWW2.RIGS[name] then return end // return if rig is already registered
	table.insert(PHUNBASE.CODWW2.RIGS, {["name"] = name, ["model"] = model})
	PHUNBASE.CODWW2.RIGS[name] = {["name"] = name, ["model"] = model}
end

PHUNBASE.CODWW2.RIG_ADD("Fallschirmjäger", "models/codww2/hands/ger_paratrooper.mdl")
PHUNBASE.CODWW2.RIG_ADD("American Paratrooper", "models/codww2/hands/usa_paratrooper.mdl")
PHUNBASE.CODWW2.RIG_ADD("Panzersoldat", "models/codww2/hands/ger_tanker.mdl")
-- PHUNBASE.CODWW2.RIG_ADD("Security (Light)", "models/weapons/v_hands_sec_l.mdl")
-- PHUNBASE.CODWW2.RIG_ADD("Security (Medium)", "models/weapons/v_hands_sec_m.mdl")
-- PHUNBASE.CODWW2.RIG_ADD("Security (Heavy)", "models/weapons/v_hands_sec_h.mdl")
-- PHUNBASE.CODWW2.RIG_ADD("V.I.P.", "models/weapons/v_hands_vip.mdl")

local function PB_CODWW2_MENU_PANEL(panel)
	panel:ClearControls()
	panel:AddControl("Label", {Text = "COD WW2 Base Weapons Hands"})
	
	panel:AddControl("CheckBox", {Label = "Use GMod Player Hands?", Command = "pb_codww2_rig_use_gmod_hands"})
	
	// GLOVES
	panel:AddControl("Label", {Text = "\nCOD WW2 Rig Options"})
	local rig_selector = vgui.Create("DComboBox", panel)
	local currig = GetConVar("pb_codww2_rig"):GetInt()
	
	if #PHUNBASE.CODWW2.RIGS > 0 then
		if currig > 0 and PHUNBASE.CODWW2.RIGS[currig] then
			rig_selector:SetValue( currig..": "..PHUNBASE.CODWW2.RIGS[currig].name )
		else
			rig_selector:SetValue( "1"..": "..PHUNBASE.CODWW2.RIGS[1].name  )
		end
		for i = 1, #PHUNBASE.CODWW2.RIGS do
			rig_selector:AddChoice( i..": "..PHUNBASE.CODWW2.RIGS[i].name )
		end
	else
		rig_selector:SetValue("No Rigs available yet")
	end
	
	rig_selector.OnSelect = function(panel, index, value)
		GetConVar("pb_codww2_rig"):SetInt( index )
	end
	
	rig_selector:SetSortItems(false)
	panel:AddItem(rig_selector)
    
    // panel update
	local panel_update_button = vgui.Create("DButton", panel)
	panel_update_button:SetText("Refresh menu")
	panel_update_button.DoClick = function() PB_CODWW2_MENU_PANEL(panel) end
	panel:AddItem(panel_update_button)
end

local function PB_CODWW2_PopulateToolMenu()
	spawnmenu.AddToolMenuOption("Utilities", "PHUNBASE", "PB_CODWW2_MENU", "COD WW2", "", "", PB_CODWW2_MENU_PANEL)
end

hook.Add("PopulateToolMenu", "PB_CODWW2_PopulateToolMenu", PB_CODWW2_PopulateToolMenu)

local function PB_CODWW2_HandChange()
	local ply = LocalPlayer()
	local wep = ply:GetActiveWeapon()
	
	if IsValid(wep) and wep.PHUNBASEWEP and wep.PHUNBASEWEP_CODWW2 then
		wep:_UpdateHands()
	end
end
cvars.AddChangeCallback("pb_codww2_rig", PB_CODWW2_HandChange)
cvars.AddChangeCallback("pb_codww2_rig_use_gmod_hands", PB_CODWW2_HandChange)
