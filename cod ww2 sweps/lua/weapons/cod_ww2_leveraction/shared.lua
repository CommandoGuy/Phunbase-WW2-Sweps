SWEP.Base = "pb_codww2_base"
include("lever_sounds.lua")
SWEP.PrintName = "Lever Action"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 50
SWEP.AimViewModelFOV = 45
SWEP.ViewModel = "models/codww2/weapons/leveraction.mdl"
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
SWEP.Primary.Damage = 75
SWEP.Primary.Delay = 0.75
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0
SWEP.IdleAfterFire = true
// Recoil variables
SWEP.Recoil	= 5
SWEP.Spread	= 0.075
SWEP.Spread_Iron = 0.065
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.Secondary.Delay = 0.9
SWEP.Secondary.Bullets = 1

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-3.852, 0.000, 1.146)
SWEP.IronsightAng = Vector(0.313, 0.000, 0.000)

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
	fire_last = "fire_last",
	fire_iron = "fire_ads",
	fire_iron_last = "fire_last",
	reload = "reload_loop",
	deploy = "draw",
	deploy_first = "draw_first",
	holster = "holster",
	reload_shell_start = "reload_start",
	reload_shell_start_empty = "reload_start",
	reload_shell_insert = "reload_loop",
	reload_shell_end = "reload_finish",
	reload_shell_end_empty = "reload_finish",
	reload_shell_pump = "pump",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
	cock = "pump",
}

SWEP.ShotgunReload = true

SWEP.CockAfterShot = true
SWEP.CockAfterShotTime = 0.55
SWEP.MakeShellOnCock = false

SWEP.AutoCockStart = true
SWEP.AutoCockStartTime = 0.33


SWEP.Sounds = {
	draw = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end}
	},
	draw_first = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end},
		{time = 0.25, sound = "LA.Draw", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "WW2.HolsterRifle", callback = function(self) end}
	},
	pump = {
		{time = 0, sound = "LA.Open", callback = function(self) end},
		{time = 0.4, sound = "LA.Close", callback = function(self) end},
	},
	reload_start = {
		{time = 0, sound = "WW2.Movement1", callback = function(self) end},
	},
	reload_loop = {
		{time = 0.15, sound = "LA.Insert", callback = function(self) end},
	},
	reload_finish = {
		{time = 0, sound = "WW2.Movement2", callback = function(self) end},
		{time = 0.15, sound = "LA.ReloadC", callback = function(self) end},
	},
	reload_shell_end = {
		{time = 0, sound = "WW2.Movement2", callback = function(self) end},
		{time = 0.15, sound = "LA.ReloadC", callback = function(self) end},
	},
}

SWEP.DeployTime = 0.45
SWEP.DeployTime_First = 1.75
SWEP.HolsterTime = 0.5
SWEP.ShotgunReloadTimes = {
	Start = 0.4,
	Start_Empty = 0.4,
	Insert = 0.6,
	End = 1.45,
	End_Empty = 1.45,
}

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
SWEP.NoShells = true

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_large", "muzzle_sparks_pistol", "weapon_muzzle_smoke_long"}

SWEP.FireSound = "LA.Fire"


SWEP.NormalFlashlight = true
SWEP.CustomFlashlight = false


SWEP.ShotgunReload = true
SWEP.ShotgunReloadTime_Start = 0.4
SWEP.ShotgunReloadTime_Start_Empty = 0.4
SWEP.ShotgunReloadTime_Insert = 0.5
SWEP.ShotgunReloadTime_End = 1.25
SWEP.ShotgunReloadTime_End_Empty = 1.25
