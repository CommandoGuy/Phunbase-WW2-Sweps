SWEP.Base = "phun_base"

SWEP.PrintName = "Model 1897"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 50
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/weapons/trenchgun.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"

SWEP.HoldType = "shotgun"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "shotgun"
SWEP.ReloadHoldType = "shotgun"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_12gauge"
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 22
SWEP.Primary.Delay = 0.75
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 7
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 5
SWEP.Spread	= 0.075
SWEP.Spread_Iron = 0.065
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.Secondary.Delay = 0.9
SWEP.Secondary.Bullets = 12

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-3.289, -5.000, 0.967)
SWEP.IronsightAng = Vector(1.083, 0.000, 0.000)

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
		{time = 0, sound = "Rifle_Raise2", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "Rifle_Lower1", callback = function(self) end}
	},
	sprint_in = {
		{time = 0, sound = "Rifle_Lower2"},
	},
	sprint_out = {
		{time = 0, sound = "Rifle_Raise1"},
	},
}

SWEP.DeployTime = 0.45
SWEP.HolsterTime = 0.25
SWEP.ReloadTime = 1.5

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 100, Y = 0, Z = 100}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0	, Up = 0}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.45
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/12guage.mdl"
SWEP.ShellSound = "PB_SHELLIMPACT_SHOTGUN"
SWEP.ShellEjectVelocity = 10

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "Muzzleflashshotgun", "muzzle_sparks_pistol", "btb_vm_overheat"}

SWEP.FireSound = "Trench_Fire"


SWEP.NormalFlashlight = true
SWEP.CustomFlashlight = false


SWEP.ShotgunReload = true
SWEP.ShotgunReloadTime_Start = 0.4
SWEP.ShotgunReloadTime_Start_Empty = 0.4
SWEP.ShotgunReloadTime_Insert = 0.5
SWEP.ShotgunReloadTime_End = 1.25
SWEP.ShotgunReloadTime_End_Empty = 1.25