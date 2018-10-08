SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "Type 5"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0
include("garand_sounds.lua")
SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 40
SWEP.ViewModel = "models/codww2/weapons/type5.mdl"
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
SWEP.Recoil	= 1.2
SWEP.Spread	= 0.1
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-4.444, 0.000, 1.116)
SWEP.IronsightAng = Vector(0.236, 0.000, 0.000)

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
	fire_iron_last = "fire_last",
	fire_iron = "fire_ads",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
}


SWEP.DeployTime = 0.75
SWEP.HolsterTime = 1
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 3.2
SWEP.ReloadTimes = {
	Base = 2.9,
	Base_Empty = 3.2,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.EmptySoundPrimary = "Dryfire_Pistol"
SWEP.FlashlightAttachmentName = "1"
SWEP.ViewModelMovementScale = 1.25

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = -25, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = -1000, Pitch_Max = -1000, Yaw_Min = -1000, Yaw_Max = -2500, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 90, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/556x45.mdl"
SWEP.ShellEjectVelocity = 0
SWEP.ShellEjectVelocity = 50

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "Garand_Fire"

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
	reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 2.4, sound = "WW2.Movement2"},
	},

	reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 3, sound = "WW2.Movement2"},
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
SWEP.LuaVMRecoilMod = 7 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0, forward = 0.2, pitch = 0} -- modifier for intensity of the recoil on varying axes
