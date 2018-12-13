SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "Model 1897"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 55
SWEP.AimViewModelFOV = 45
SWEP.ViewModel = "models/codww2/weapons/trenchgun.mdl"
SWEP.WorldModel = "models/codww2/weapons/w_trenchgun.mdl"
SWEP.CustomWorldModel = "models/codww2/weapons/w_trenchgun.mdl"
SWEP.CustomWorldModelPos = Vector(-0.3,4,1.3)
SWEP.CustomWorldModelAng = Angle(-9.25,0,180)

SWEP.HoldType = "shotgun"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "shotgun"
SWEP.ReloadHoldType = "shotgun"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_12gauge"
SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 0.85
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 7
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 5
SWEP.Spread	= 0.03
SWEP.Spread_Iron = 0.028
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.Secondary.Delay = 0.9
SWEP.Secondary.Bullets = 12

SWEP.BasePos = Vector(-0.961, -1, 0.000)
SWEP.BaseAng = Vector(0.000, 0.000, 0.000)

SWEP.IronsightPos = Vector(-3.332, 0.000, 1.309)
SWEP.IronsightAng = Vector(0.513, 0.000, 0.000)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Vector(0,0,0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = true

SWEP.DisableIronsights = false

SWEP.Sequences = {
	idle = "idle",
	fire = "fire",
	fire_last = "fire",
	fire_iron = "fire",
	fire_iron_last = "fire",
	reload = "reload",
	deploy = "draw",
	holster = "holster",
	reload_shell_start = "reload_start",
	reload_shell_start_empty = "reload_start",
	reload_shell_insert = "reload",
	reload_shell_end = "reload_finish",
	reload_shell_end_empty = "reload_finish",
	reload_shell_pump = "pump",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
}



SWEP.Sounds = {
	fire = {
		{time = 0.1, sound = "", callback = function(wep) wep:PlayVMSequence("reload_shell_pump") end},
	},
	draw = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "WW2.HolsterRifle", callback = function(self) end}
	},
	reload_start = {
		{time = 0, sound = "WW2.Movement1", callback = function(self) end}
	},
	reload_finish = {
		{time = 0, sound = "WW2.Movement2", callback = function(self) end}
	},
}

SWEP.DeployTime = 0.45
SWEP.HolsterTime = 0.5

SWEP.UsesEmptyReloadTimes = false

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 100, Y = 0, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0	, Up = 0}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.45
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/12guage.mdl"
SWEP.ShellSound = "PB_SHELLIMPACT_SHOTGUN"
SWEP.ShellEjectVelocity = 10

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_large", "muzzle_sparks_pistol", "weapon_muzzle_smoke_long"}

SWEP.FireSound = "Trench_Fire"


SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.ShotgunReload = true
SWEP.ShotgunReloadTimes = {
	Start = 0.3,
	Start_EmptyOneAndOnly = 0.25,
	Insert = 0.52,
	End = 1.02,
	End_Empty = 1.02,

	InsertAmmoWait = 0.35,
	InsertOnStartEmptyAmmoWait = 2.2,
}
