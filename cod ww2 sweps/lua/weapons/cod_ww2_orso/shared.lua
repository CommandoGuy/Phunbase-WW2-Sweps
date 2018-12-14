SWEP.Base = "pb_codww2_base"
include("orso_sounds.lua")
SWEP.PrintName = "Beretta Model 38"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/codww2/weapons/model38.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 32
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 25
SWEP.Primary.Delay = 0.1
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

SWEP.IronsightPos = Vector(-4.044, -2.986, 1.300)
SWEP.IronsightAng = Vector(0.400, 0.039, 0.000)

SWEP.CustomizePos = Vector(1.546, 0.000, -1.502)
SWEP.CustomizeAng = Vector(6.667, 10.892, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = false

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
	fire_iron_last = "fire_ads_last",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	deploy_first = "draw_first",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
}

SWEP.UseIronTransitionAnims = false
SWEP.DeployTime = 0.75
SWEP.DeployTime_First = 1.5
SWEP.HolsterTime = 0.55
SWEP.ReloadTime = 1.5
SWEP.ReloadTime_Empty = 2
SWEP.ReloadTimes = {
	Base = 2.25,
	Base_Empty = 2.75,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.EnableCustomization = false
SWEP.CustomizationMenuSize = 1.5
SWEP.CustomizationMenuAttachmentName = "1"

SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = 25, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = -1000, Pitch_Max = 1000, Yaw_Min = -1000, Yaw_Max = 1000, Roll_Min = -1000, Roll_Max = 1000}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0	, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.01
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/9x19.mdl"
SWEP.ShellEjectVelocity = 0


SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "Orso.Fire"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay

SWEP.Sounds = {
	draw = {
		{time = 0, sound = "WW2.DrawSMG", callback = function(self) end}
	},
	draw_first = {
		{time = 0, sound = "WW2.DrawSMG", callback = function(self) end},
		{time = 0.5, sound = "Orso.Bolt"},
	},
	holster = {
		{time = 0, sound = "WW2.HolsterSMG", callback = function(self) end}
	},
reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.4, sound = "Orso.Magout"},
		{time = 1, sound = "Orso.Magin"},
		{time = 1.25, sound = "WW2.Movement2"},
	},
	reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 0.4, sound = "Orso.Magout"},
		{time = 0.8, sound = "Orso.Magin"},
		{time = 1.7, sound = "Orso.Bolt"},
		{time = 1.7, sound = "WW2.Movement2"},
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
SWEP.LuaVMRecoilMod = 2.25 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0.25, forward = 0.5, pitch = 0} -- modifier for intensity of the recoil on varying axes
