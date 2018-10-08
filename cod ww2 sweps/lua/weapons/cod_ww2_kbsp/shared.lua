SWEP.Base = "pb_codww2_base"
include("kbsp_sounds.lua")
SWEP.PrintName = "Karabin"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 40
SWEP.ViewModel = "models/codww2/weapons/kbsp.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 1
SWEP.CustomizationMenuAttachmentName = "1"


SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_792x57"
SWEP.Primary.ClipSize = 12
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 0.122
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0
SWEP.MouseSensitivityIron = 0.25

// Recoil variables
SWEP.Recoil	= 2.25
SWEP.Spread	= 0.1
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-4.493, 0.000, 1.063)
SWEP.IronsightAng = Vector(0.100, 0.011, 0.000)

SWEP.CustomizePos = Vector(2.222, -0.780, -2.559)
SWEP.CustomizeAng = Vector(12.928, 17.873, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = false

SWEP.DisableIronsights = false
SWEP.EmptySoundPrimary = "Dryfire_Sniper"


SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"karabin_scope"}},
}

SWEP.AttachmentIronsights = {
["karabin_scope"] = {pos = Vector(-4.473, 0.000, 0.241), ang = Vector(0.100, 0.011, 0.000)}
}


SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire = "fire",
	fire_last = "fire_last",
	fire_iron_last = "fire_ads_last",
	fire_iron = "fire_ads",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	deploy_first = "draw_first",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
}

SWEP.IdleAfterFire = false
SWEP.UseIronTransitionAnims = false
SWEP.DeployTime = 0.65
SWEP.DeployTime_First = 1.57
SWEP.HolsterTime = 0.3
SWEP.ReloadTime = 3
SWEP.ReloadTime_Empty = 4
SWEP.ReloadTimes = {
	Base = 2.5,
	Base_Empty = 3,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.FlashlightAttachmentName = "1"


SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 0, Y = 50, Z = 90}
SWEP.ShellAngularVelocity = {Pitch_Min = -1000, Pitch_Max = -1000, Yaw_Min = -1000, Yaw_Max = -2500, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0
SWEP.ShellScale = 0.75
SWEP.ShellModel = "models/codww2/shells/762x51.mdl"
SWEP.ShellEjectVelocity = 0
SWEP.ShellEjectVelocity = 0

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "G43_Single"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay


SWEP.RTScope_Enabled = true
SWEP.RTScope_Zoom = 7.25
SWEP.RTScope_Reticle = Material("models/codww2/reticles/enfield_reticle")
SWEP.RTScope_Material = Material("models/codww2/weapons/kbsp/mtl_generic_optic_ads_lens")
SWEP.RTScope_Align = Angle(0,0,90)
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true
SWEP.RTScope_Rotate = 90

SWEP.Sounds = {
	draw_first = {
		{time = 0.5, sound = "KBSP.Bolt", callback = function(self) end}
	},
	 draw = {
		{time = 0.15, sound = "WW2.DrawRifle", callback = function(self) end}
	},
	holster = {
		{time = 0.15, sound = "WW2.HolsterRifle", callback = function(self) end}
	},
	reload = {
		{time = 0, sound = "WW2.Movement1", callback = function(self) end},
		{time = 0.27, sound = "KBSP.Magout", callback = function(self) end},
		{time = 1.25, sound = "KBSP.Magin", callback = function(self) end},
		{time = 1.7, sound = "WW2.Movement2", callback = function(self) end}
	},
	reload_empty = {
		{time = 0, sound = "WW2.Movement1", callback = function(self) end},
		{time = 0.27, sound = "KBSP.Magout", callback = function(self) end},
		{time = 1.25, sound = "KBSP.Magin", callback = function(self) end},
		{time = 1.75, sound = "WW2.Movement2", callback = function(self) end},
		{time = 2.15, sound = "KBSP.Bolt", callback = function(self) end},
		{time = 2.3, sound = "WW2.Movement1", callback = function(self) end}
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
SWEP.LuaVMRecoilMod = 5 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0, forward = 0.25, pitch = 0} -- modifier for intensity of the recoil on varying axes
