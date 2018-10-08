SWEP.Base = "pb_codww2_base"

include("mosin_sounds.lua")

SWEP.PrintName = "Mosin-Nagant"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 64
SWEP.AimViewModelFOV = 45
SWEP.ViewModel = "models/codww2/weapons/mosin_nagant.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_763x25"
SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 150
SWEP.Primary.Delay = 1.3
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0
SWEP.Chamberable = false

// Recoil variables
SWEP.Recoil	= 5
SWEP.Spread	= 0.25
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.1
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0

SWEP.BasePos = Vector(0.000, 0.000, 0.000)
SWEP.BaseAng = Vector(0.000, 0.000, 2.243)

SWEP.IronsightPos = Vector(-4.391, 0.000, 1.301)
SWEP.IronsightAng = Vector(0.190, 0.034, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)
SWEP.MouseSensitivityIron = 0.5

SWEP.PistolSprintSway = false

SWEP.DisableIronsights = false
SWEP.EmptySoundPrimary = "Dryfire_Sniper"


SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire = "fire",
	fire_last = "fire",
	fire_iron_last = "fire",
	fire_iron = "fire_ads",
	reload = "reload",
	reload_empty = "reload_empty",
	partial_reload = "reload_partial",
	deploy = "draw",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
	cock = "rechamber",
}

SWEP.IdleAfterFire = false
SWEP.UseIronTransitionAnims = false
SWEP.DeployTime = 0.75
SWEP.HolsterTime = 0.3
SWEP.ReloadTimes = {
	Base = 3.9,
	Base_Empty = 3.93,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.FlashlightAttachmentName = "1"

SWEP.CockAfterShot = true
SWEP.CockAfterShotTime = 0.75
SWEP.MakeShellOnCock = true
SWEP.AutoCockStart = true
SWEP.AutoCockStartTime = 0.2

SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = -25, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = -1000, Pitch_Max = -1000, Yaw_Min = -1000, Yaw_Max = -2500, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 90, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.3
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/762x51.mdl"
SWEP.ShellEjectVelocity = 0
SWEP.ShellEjectVelocity = 0

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_large", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "mosin.fire"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay


SWEP.Sounds = {
	draw = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "WW2.HolsterRifle", callback = function(self) end}
	},
	rechamber = {
		{time = 0.15, sound = "mosin.boltlatch"},
		{time = 0.3, sound = "mosin.boltback"},
		{time = 0.4, sound = "mosin.boltrelease"},
		{time = 0.5, sound = "mosin.boltforward"},
	},
	reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.4, sound = "mosin.boltlatch"},
		{time = 0.6, sound = "mosin.boltback"},
		{time = 1.75, sound = "mosin.clipin"},
		{time = 1.9, sound = "mosin.roundsin"},
		{time = 2.6, sound = "mosin.boltrelease"},
		{time = 2.7, sound = "mosin.boltforward"},
		{time = 3, sound = "WW2.Movement2"},
	},
	reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.4, sound = "mosin.boltlatch"},
		{time = 0.6, sound = "mosin.boltback"},
		{time = 1.75, sound = "mosin.clipin"},
		{time = 1.9, sound = "mosin.roundsin"},
		{time = 2.6, sound = "mosin.boltrelease"},
		{time = 2.7, sound = "mosin.boltforward"},
		{time = 3, sound = "WW2.Movement2"},
	},
	reload_partial = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.4, sound = "mosin.boltlatch"},
		{time = 0.6, sound = "mosin.boltback"},
		{time = 1.25, sound = "mosin.bulletin"},
		{time = 1.9, sound = "mosin.boltrelease"},
		{time = 2.05, sound = "mosin.boltforward"},
		{time = 2.5, sound = "WW2.Movement2"},
	},
}

SWEP.Secondary.Ammo = ""
SWEP.Secondary.Delay = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true


function SWEP:ReloadAnimLogic()
	local clip = self:Clip1()
	local empty = clip < 1

	local seq = empty and "reload_empty" or "reload"

if self:Clip1() == 4 then
	seq = "partial_"..seq
end

self:PlayVMSequence(seq)
end
