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
att.name = "springfield_ironsight"
att.menuName = "Ironsights"
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "springfield_x7_scope"
att.menuName = "x7 Scope"
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_svt40_scope"
att.menuName = "4x Scope"
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_zf4_scope"
att.menuName = "x4 Scope"
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_ppsh_drum"
att.menuName = "Drum Magazine"
function att:attachCallback()
    if CLIENT then
        local vm = self.VM
        if IsValid(vm) then
             self.VM:SetBodygroup(0, 1) // sets bg to 1
        end
    end
	self.UsesDrumMag = true
	self:unloadWeapon()
	self:SetClipSize(71)
end

function att:detachCallback()
    if CLIENT then
        local vm = self.VM
        if IsValid(vm) then
             self.VM:SetBodygroup(0, 0) // resets bg to 0 (default)
        end
    end
	self.UsesDrumMag = false
	self:unloadWeapon()
	self:RestoreClipSize()
end
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_reflexsight"
att.menuName = "Reflex Sight"

att.reticleTable = {
	["reticleMaterial"] = Material("phunbase/reticles/eotech_reticle"),
	["stencilElementName"] = "cod_ww2_reflexsight",
	["reticleSize"] = 100,
	["reticleRotate"] = 0,
	["useMuzzleAngles"] = false
}
function att:attachCallback()
    if CLIENT then
        local vm = self.VM
        if IsValid(vm) then
             self.VM:SetBodygroup(1, 1) // sets bg to 1
        end
    end
end

function att:detachCallback()
    if CLIENT then
        local vm = self.VM
        if IsValid(vm) then
             self.VM:SetBodygroup(1, 0) // resets bg to 0 (default)
        end
    end
end
PHUNBASE:registerAttachment(att)

local att = {}
att.name = "cod_ww2_x4scope"
att.menuName = "x4 Scope"
function att:attachCallback()
    if CLIENT then
        local vm = self.VM
        if IsValid(vm) then
             self.VM:SetBodygroup(1, 2)
        end
    end
end

function att:detachCallback()
    if CLIENT then
        local vm = self.VM
        if IsValid(vm) then
             self.VM:SetBodygroup(1, 0)
        end
    end
end
PHUNBASE:registerAttachment(att)