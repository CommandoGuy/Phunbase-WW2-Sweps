SWEP.Base = "pb_codww2_base"
SWEP.PrintName = "Thompson M1A1"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0
include("thompson_sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/codww2/weapons/thompson.mdl"
SWEP.WorldModel = "models/codww2/weapons/w_thompson.mdl"

SWEP.CustomWorldModel = "models/codww2/weapons/w_thompson.mdl"
SWEP.CustomWorldModelPos = Vector(7.5,1.2,0.9)
SWEP.CustomWorldModelAng = Angle(0,-90.75,180)

SWEP.HoldType = "ar2"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "ar2"
SWEP.ReloadHoldType = "smg"
SWEP.UseHands = true
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_45acp"
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 34
SWEP.Primary.Delay = 0.0857
SWEP.Primary.Force = 5.2
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 1.14
SWEP.Spread	= 0.033
SWEP.Spread_Iron = 0.009
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2
SWEP.IdleAfterFire = false

SWEP.BasePos = Vector(-0.500, 0, -0.162)
0.000, 0.000, 0.000)

SWEP.IronsightPos = Vector(-3.346, 0.000, 0.700)
SWEP.IronsightAng = Vector(0.906, 0.000, 0.000)

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

SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire = "fire",
	fire_last = "fire",
	fire_iron = "fire_ads",
	fire_iron_last = "fire_ads",
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
SWEP.HolsterTime = 0.5
SWEP.ReloadTime = 3
SWEP.ReloadTime_Empty = 3
SWEP.ReloadTimes = {
	Base = 2.83,
	Base_Empty = 3.33,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.FireModes = {"auto"}

SWEP.Sounds = {
	draw = {
		{time = 0, sound = "WW2.DrawSMG", callback = function(self) end}
	},
	draw_first = {
		{time = 0, sound = "WW2.DrawSMG", callback = function(self) end},
		{time = 0.65, sound = "Thompson_Bolt"},
	},
	holster = {
		{time = 0, sound = "WW2.HolsterSMG", callback = function(self) end}
	},
reload = {
		{time = 0, sound = "WW2_Movement1"},
		{time = 0.45, sound = "Thompson_Magout"},
		{time = 1, sound = "WW2_Movement1"},
		{time = 1.55, sound = "Thompson_Magin"},
		{time = 2.25, sound = "WW2_Movement2"},
	},
	reload_empty = {
		{time = 0, sound = "WW2_Movement1"},
		{time = 0.45, sound = "Thompson_Magout"},
		{time = 1, sound = "WW2_Movement1"},
		{time = 1.75, sound = "Thompson_Magin"},
		{time = 2.25, sound = "Thompson_Maghit"},
		{time = 2.5, sound = "WW2_Movement2"},
	},
}

SWEP.ViewModelMovementScale = 0.9

// shell-related stuff
SWEP.ShellVelocity = {X = 75, Y = 0, Z = 0}
SWEP.ShellAngularVelocity = {Pitch_Min = -1000, Pitch_Max = 1000, Yaw_Min = 0, Yaw_Max = 0, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.01
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/45apc.mdl"
SWEP.ShellEjectVelocity = 0


SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "Thompson_Fire"

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
SWEP.FullAimViewmodelRecoil = true
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 0.1
SWEP.LuaVMRecoilMod = 2.5 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0.1, roll = 0.5, forward = 0.5, pitch = 0} -- modifier for intensity of the recoil on varying axes
