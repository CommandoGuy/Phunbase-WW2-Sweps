SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "Luger P08"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 64
SWEP.ViewModel = "models/codww2/weapons/luger.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "pistol"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "pistol"
SWEP.ReloadHoldType = "pistol"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = false
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 33.4
SWEP.Primary.Delay = 0.120
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 1.5
SWEP.Spread	= 0.025
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(-1,2,0)
SWEP.BaseAng = Vector(0,0.6,0)

SWEP.IronsightPos = Vector(-4.059, 0.000, 0.737)
SWEP.IronsightAng = Vector(0.373, 0.026, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -10.035, -6.005)
SWEP.NearWallAng = Vector(55.318, 6.918, -0.25)

SWEP.PistolSprintSway = false

SWEP.DisableIronsights = false
SWEP.UseIronTransitionAnims = false
SWEP.IdleAfterFire = false


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
SWEP.ReloadTime = 1.75
SWEP.ReloadTime_Empty = 2.7
SWEP.ReloadTimes = {
	Base = 1.93,
	Base_Empty = 2.96,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.EmptySoundPrimary = "Dryfire_Pistol"
SWEP.FlashlightAttachmentName = "1"
SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 0, Y = 100, Z = 100}
SWEP.ShellAngularVelocity = {Pitch_Min = -1000, Pitch_Max = -1000, Yaw_Min = -1000, Yaw_Max = -2500, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 90, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/9x19.mdl"
SWEP.ShellEjectVelocity = 0

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "Luger_Fire"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay

SWEP.Sounds = {
	draw = {
		{time = 0, sound = "WW2.DrawPistol", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "WW2.HolsterPistol", callback = function(self) end}
	},
	reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 1.25, sound = "WW2.Movement2"}
	},
		reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 1.65, sound = "WW2.Movement2"}
	},
}

SWEP.Secondary.Ammo = ""
SWEP.Secondary.Delay = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
