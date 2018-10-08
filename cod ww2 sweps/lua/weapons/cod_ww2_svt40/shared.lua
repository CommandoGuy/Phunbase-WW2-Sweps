SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "SVT-40"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/codww2/weapons/svt40_c.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_762x39"
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 56
SWEP.Primary.Delay = 0.233
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

SWEP.IronsightPos = Vector(-3.503, 0.000, 0.947)
SWEP.IronsightAng = Vector(0.362, 0.037, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.CustomizePos = Vector(2.222, -0.780, -2.559)
SWEP.CustomizeAng = Vector(12.928, 17.873, 0.000)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = false

SWEP.DisableIronsights = false
SWEP.EmptySoundPrimary = "Dryfire_Sniper"


SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire = "fire",
	fire_last = "fire_last",
	fire_iron_last = "fire_last",
	fire_iron = "fire",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
}

SWEP.IdleAfterFire = false
SWEP.UseIronTransitionAnims = false
SWEP.DeployTime = 0.75
SWEP.HolsterTime = 0.3
SWEP.ReloadTime = 2.3
SWEP.ReloadTime_Empty = 2.8
SWEP.ReloadTimes = {
	Base = 2.3,
	Base_Empty = 2.8,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.FlashlightAttachmentName = "1"
SWEP.MouseSensitivityIron = 0.25
SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 0, Y = 100, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = 1000, Pitch_Max = -1000, Yaw_Min = 500, Yaw_Max = -500, Roll_Min = 1000, Roll_Max = -2500}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.01
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/762x51.mdl"
SWEP.ShellEjectVelocity = 0


SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "SVT_Single"

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
		{time = 1.75, sound = "WW2.Movement2"}
	},
		reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 2.35, sound = "WW2.Movement2"}
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
SWEP.FullAimViewmodelRecoil = false
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 0.1
SWEP.LuaVMRecoilMod = 5 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0.1, hor = 0.1, roll = 0.1, forward = 0.1, pitch = 0.05} -- modifier for intensity of the recoil on varying axes
