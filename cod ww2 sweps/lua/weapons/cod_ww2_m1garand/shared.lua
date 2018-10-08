SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "M1 Garand"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0
include("garand_sounds.lua")
SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 50
SWEP.ViewModel = "models/codww2/weapons/garand.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_30-06"
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 45
SWEP.Primary.Delay = 0.130
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 2
SWEP.Spread	= 0.1
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-4.322, 0.000, 0.876)
SWEP.IronsightAng = Vector(-0.192, 0.023, 0.760)

SWEP.CustomizePos = Vector(2.222, -0.780, -2.559)
SWEP.CustomizeAng = Vector(12.928, 17.873, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = true

SWEP.DisableIronsights = false
SWEP.UseIronTransitionAnims = false
SWEP.IdleAfterFire = false

SWEP.Chamberable = false

SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire = "fire",
	fire_last = "fire_last",
	fire_last_iron = "fire_ads_last",
	fire_iron = "fire_ads",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	deploy_first = "draw_first",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
	ext_idle = "idle",
	ext_idle_empty = "idle",
	ext_idle_iron = "idle",
	ext_idle_iron_empty = "idle",
	ext_fire = "fire",
	ext_fire_last = "ext_fire_last",
	ext_fire_last_iron = "ext_fire_ads_last",
	ext_fire_iron = "fire_ads",
	ext_reload = "ext_reload",
	ext_reload_empty = "ext_reload_empty",
	ext_deploy = "draw",
	ext_deploy_first = "draw_first",
	ext_holster = "holster",
	ext_sprint_start = "sprint_in",
	ext_sprint_idle = "sprint",
	ext_sprint_end = "sprint_out",
}


SWEP.DeployTime = 0.75
SWEP.DeployTime_First = 1.9
SWEP.HolsterTime = 0.4
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 2.75
SWEP.ReloadTimes = {
	Base = 3,
	Base_Empty = 2.8,
	Base_Ext = 1.9,
	Base_Empty_Ext = 2.5,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.EmptySoundPrimary = "Dryfire_Pistol"
SWEP.FlashlightAttachmentName = "1"
SWEP.ViewModelMovementScale = 1.25

// shell-related stuff
SWEP.ShellVelocity = {X = 100, Y = 0, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = 0, Pitch_Max = 1000, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.01
SWEP.ShellScale = 0.75
SWEP.ShellModel = "models/codww2/shells/762x51.mdl"
SWEP.ShellEjectVelocity = 0

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke_long"}

SWEP.FireSound = "Garand_Fire"

SWEP.VElements = {
	["cod_ww2_garand_optic"] = { type = "Model", model = "models/codww2/attachments/a_optic_garand.mdl", bone = "tag_weapon", pos = Vector(0.533, -0.031, 5.552), angle = Angle(0, 0, 0), size = Vector(1.149, 1.149, 1.149) }
}

SWEP.AttachmentIronsights = {
	["cod_ww2_garand_optic"] = {pos = Vector(-3.191, -2.105, 0.386), ang = Vector(-0.224, 0.008, 0.000)},
}

SWEP.Attachments = {
  [1] = {name = "Optics", attachments = {"cod_ww2_garand_optic"}},
	[2] = {name = "Magazine", attachments = {"cod_ww2_garand_mag"}},
}

SWEP.RTScope_Enabled = true
SWEP.RTScope_Zoom = 7.25
SWEP.RTScope_Reticle = Material("models/codww2/reticles/enfield_reticle")
SWEP.RTScope_Material = Material("models/codww2/weapons/optics/lense_rt")
SWEP.RTScope_Align = Angle(0,0,0)
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 1.5
SWEP.CustomizationMenuAttachmentName = "1"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay

SWEP.Sounds = {
		draw = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end}
	},
		draw_first = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end},
		{time = 0.5, sound = "Garand_Boltclose"},
	},
	holster = {
		{time = 0, sound = "WW2.HolsterRifle", callback = function(self) end}
	},
	reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 2.4, sound = "WW2.Movement2"},
	},
	reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 2, sound = "WW2.Movement2"},
	},
	ext_reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.25, sound = "garand_magout"},
		{time = 1, sound = "garand_magin"},
		{time = 1.5, sound = "WW2.Movement2"},
	},
	ext_reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.25, sound = "garand_magout"},
		{time = 1, sound = "garand_magin"},
		{time = 1.75, sound = "garand_boltclose"},
		{time = 2, sound = "WW2.Movement2"},
	},
	ext_fire_last = {
		{time = 0, sound = "M1C_Ping"},
	},
	ext_fire_ads_last = {
		{time = 0, sound = "M1C_Ping"},
	},
}

SWEP.Secondary.Ammo = ""
SWEP.Secondary.Delay = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true


 // RECOIL
SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 0
SWEP.LuaViewmodelRecoil = true
SWEP.FullAimViewmodelRecoil = true
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 0.1
SWEP.LuaVMRecoilMod = 3 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0.2, roll = 0.1, forward = 0.25, pitch = 0} -- modifier for intensity of the recoil on varying axes

function SWEP:PlayIdleAnim() // override and dont use this shit
	local clip = self:Clip1()
	local empty = clip < 1

	local seq = empty and "idle_empty" or "idle"

	if self.UsesExtMag then
	seq = "ext_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:DeployAnimLogic()
local clip = self:Clip1()
local empty = clip < 1

local seq = (empty and self.Sequences.deploy_empty) and "deploy_empty" or ((self.Sequences.deploy_first and !self._wasFirstTimeDeployed) and "deploy_first" or "deploy")

if self.UsesExtMag then
	seq = "ext_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:HolsterAnimLogic()

local seq = "holster"

if self.UsesExtMag then
	seq = "ext_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:ReloadAnimLogic()
	local clip = self:Clip1()
	local empty = clip < 1

	local seq = empty and "reload_empty" or "reload"

if self.UsesExtMag then
	seq = "ext_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:FireAnimLogic(isSecondary)
	local clip = self:Clip1() // clip before firing anim played
	local last = clip == 1
	local dry = clip < 1

	local seq = last and "fire_last" or (dry and "fire_dry" or "fire")

	if self:GetIron() then
	seq = seq.."_iron"
end

if self.UsesExtMag then
	seq = "ext_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:SprintStartAnimLogic()
	local seq = "sprint_start"

	if self.UsesExtMag then
	seq = "ext_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:SprintLoopAnimLogic()
	local seq = "sprint_idle"

	if self.UsesExtMag then
	seq = "ext_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:SprintEndAnimLogic()
	local seq = "sprint_end"

	if self.UsesExtMag then
	seq = "ext_"..seq
end

self:PlayVMSequence(seq)
end
