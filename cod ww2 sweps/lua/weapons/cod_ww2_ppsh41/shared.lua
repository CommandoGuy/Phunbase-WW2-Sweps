SWEP.Base = "pb_codww2_base"
include("ppsh_sounds.lua")
SWEP.PrintName = "PPSH-41"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/codww2/weapons/ppsh41.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = false
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 35
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 25
SWEP.Primary.Delay = 0.06
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 1
SWEP.Spread	= 0.1
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2
SWEP.IdleAfterFire = true
SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-3.979, -2.986, 1.397)
SWEP.IronsightAng = Vector(0.000, 0.041, 0.000)

SWEP.CustomizePos = Vector(1.546, 0.000, -1.502)
SWEP.CustomizeAng = Vector(6.667, 10.892, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = true

SWEP.DisableIronsights = false
SWEP.FlashlightAttachmentName = "1"
SWEP.EmptySoundPrimary = "Dryfire_pistol"
SWEP.FireModes = {"auto", "semi"}
SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire = "fire",
	fire_last = "fire_last",
	fire_iron = "fire_ads",
	fire_iron_last = "fire_last",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	deploy_first = "draw_first",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
	drum_deploy = "extmag_draw",
	drum_deploy_first = "extmag_draw_first",
	drum_holster = "extmag_holster",
	drum_reload = "extmag_reload",
	drum_reload_empty = "extmag_reload_empty",
	drum_idle = "extmag_idle",
	drum_idle_empty = "extmag_idle",
	drum_fire = "extmag_fire",
	drum_fire_last = "extmag_fire_last",
	drum_sprint_start = "extmag_sprint_in",
	drum_sprint_idle = "extmag_sprint",
	drum_sprint_end = "extmag_sprint_out",
}

SWEP.UsesEmptyReloadTimes = true

SWEP.Sounds = {
	draw_first = {
		{time = 0, sound = "PPSH.Boltrelease"},
	},
	draw = {
		{time = 0, sound = "WW2.DrawSMG", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "WW2.HolsterSMG", callback = function(self) end}
	},
	reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.5, sound = "PPSH.Magout"},
		{time = 1.5, sound = "PPSH.Magin"},
		{time = 1.75, sound = "WW2.Movement2"},
	},

	reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.5, sound = "PPSH.Magout"},
		{time = 1.5, sound = "PPSH.Magin"},
		{time = 2.25, sound = "PPSH.Boltback"},
		{time = 2.4, sound = "WW2.Movement2"},
	},

	extmag_reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.5, sound = "PPSH.Magout"},
		{time = 1.5, sound = "PPSH.Magin"},
		{time = 1.75, sound = "WW2.Movement2"},
	},

	extmag_reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.5, sound = "PPSH.Magout"},
		{time = 1.5, sound = "PPSH.Magin"},
		{time = 2.25, sound = "PPSH.Boltback"},
		{time = 2.4, sound = "WW2.Movement2"},
	},
}

SWEP.Attachments = {
	[1] = {name = "Magazine", attachments = {"cod_ww2_ppsh_drum"}},
}

SWEP.UseIronTransitionAnims = false
SWEP.DeployTime = 1
SWEP.DeployTime_First =1.37
SWEP.HolsterTime = 0.3

SWEP.ReloadTimes = {
	Base = 2.37,
	Base_Empty = 3.07,
	Base_Drum = 2.37,
	Base_Empty_Drum = 3.07,
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 1.5
SWEP.CustomizationMenuAttachmentName = "1"


SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 150, Y = 0, Z = 90}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = -90, Right = 	0, Up = 180}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.01
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/9x19.mdl"
SWEP.ShellEjectVelocity = 0


SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "PPSH.Fire"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay


SWEP.Secondary.Ammo = ""
SWEP.Secondary.Delay = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true


 // RECOIL
SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 0
SWEP.LuaViewmodelRecoil = true
SWEP.FullAimViewmodelRecoil = false
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 0.1
SWEP.LuaVMRecoilMod = 5 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0.1, hor = 0.1, roll = 0.25, forward = 0.25, pitch = 0.025} -- modifier for intensity of the recoil on varying axes


function SWEP:PlayIdleAnim() // override and dont use this shit
	local clip = self:Clip1()
	local empty = clip < 1

	local seq = empty and "idle_empty" or "idle"

	if self.UsesDrumMag then
	seq = "drum_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:DeployAnimLogic()
local clip = self:Clip1()
local empty = clip < 1

local seq = (empty and self.Sequences.deploy_empty) and "deploy_empty" or ((self.Sequences.deploy_first and !self._wasFirstTimeDeployed) and "deploy_first" or "deploy")

if self.UsesDrumMag then
	seq = "drum_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:HolsterAnimLogic()

local seq = "holster"

if self.UsesDrumMag then
	seq = "drum_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:ReloadAnimLogic()
	local clip = self:Clip1()
	local empty = clip < 1

	local seq = empty and "reload_empty" or "reload"

if self.UsesDrumMag then
	seq = "drum_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:FireAnimLogic(isSecondary)
	local clip = self:Clip1() // clip before firing anim played
	local last = clip == 1
	local dry = clip < 1

	local seq = last and "fire_last" or (dry and "fire_dry" or "fire")

	if self.UsesDrumMag then
	seq = "drum_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:SprintStartAnimLogic()
	local seq = "sprint_start"

	if self.UsesDrumMag then
	seq = "drum_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:SprintLoopAnimLogic()
	local seq = "sprint_idle"

	if self.UsesDrumMag then
	seq = "drum_"..seq
end

self:PlayVMSequence(seq)
end

function SWEP:SprintEndAnimLogic()
	local seq = "sprint_end"

	if self.UsesDrumMag then
	seq = "drum_"..seq
end

self:PlayVMSequence(seq)
end
