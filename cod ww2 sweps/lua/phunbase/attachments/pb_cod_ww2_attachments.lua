local att = {}
att.name = "call_of_duty_world_war_2_7_times_magnification_marksman_rifle_scope_but_with_a_free_call_of_duty_world_war_2_executable_for_you_to_play_with"
att.menuName = "7x Scope"
PHUNBASE:registerAttachment(att)

local ang0 = Vector()

local att = {}
att.name = "call_of_duty_world_war_2_iron_sight_marksman_rifle_scope_but_with_a_free_call_of_duty_world_war_2_executable_for_you_to_play_with"
att.menuName = "Ironsights"
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "Normandy_Camouflage"
att.menuName = "Battle of Normandy Camouflage"

function att:attachCallback()
    if CLIENT then
        local vm = self.VM
        if IsValid(vm) then
            vm:SetSkin(1) // sets skin to 1
        end
    end
end

function att:detachCallback()
    if CLIENT then
        local vm = self.VM
        if IsValid(vm) then
            vm:SetSkin(0) // resets skin to 0 (default)
        end
    end
end

PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_k98k_scope"
att.menuName = "7x Scope"
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_k98k_4x_scope"
att.menuName = "x4 Scope"
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_svt40_scope"
att.menuName = "4x Scope"
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_zf4_scope"
att.menuName = "x4 Scope"
PHUNBASE:registerAttachment(att)