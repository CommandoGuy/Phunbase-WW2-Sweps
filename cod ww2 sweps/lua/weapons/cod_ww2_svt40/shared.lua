SWEP.Base = "phun_base"

SWEP.PrintName = "SVT-40"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/weapons/svt40.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.ScriptedEntityType = "phunbase_weapon_hl2"

// weapon specific variables
SWEP.Primary.Ammo = "smg1"
SWEP.Primary.ClipSize = 12
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 0.122
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

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-3.499, -3.395, 1.125)
SWEP.IronsightAng = Vector(0.000, 0.000, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0, -10, 0)
SWEP.NearWallAng = Vector(0, 0, 0)

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
SWEP.ReloadTime = 3
SWEP.ReloadTime_Empty = 4
SWEP.FlashlightAttachmentName = "1"
SWEP.HolsterAnimSpeed = -1
SWEP.HolsterAnimStartCyc = 1

SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 60, Y = 0, Z = -40}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 50, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.01
SWEP.ShellScale = 1
SWEP.ShellModel = "models/phunbase/shells/4_6x30mm.mdl"
SWEP.ShellEjectVelocity = 0

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = { "PistolGlow", "btb_vm_small", "muzzle_fire_pistol", "muzzle_sparks_pistol", "btb_vm_overheat"}

SWEP.FireSound = "SVT_Single"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay

SWEP.Sounds = {
	draw = {
		{time = 0, sound = "Draw1", callback = function(self) end}
	},
	reload = {
		{time = 0, sound = "Rifle_Raise1"},
		{time = 2.48, sound = "Rifle_Lower2"}
	},
		reload_empty = {
		{time = 0, sound = "Rifle_Raise1"},
		{time = 3.2, sound = "Rifle_Lower2"}
	},
	sprint_in = {
		{time = 0, sound = "Rifle_Lower2"},
	},
	sprint_out = {
		{time = 0, sound = "Rifle_Raise1"},
	},

}

SWEP.Secondary.Ammo = ""
SWEP.Secondary.Delay = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
