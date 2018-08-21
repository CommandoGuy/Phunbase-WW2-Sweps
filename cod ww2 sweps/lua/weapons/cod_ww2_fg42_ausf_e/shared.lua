SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "FG42 Ausf E"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 70
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/codww2/weapons/fg42.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_792x57"
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 0.066
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

SWEP.IronsightPos = Vector(-3.783, -1.093, 0.241)
SWEP.IronsightAng = Vector(1.302, -0.891, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = false

SWEP.DisableIronsights = false

SWEP.EmptySoundPrimary = "Dryfire_lmg"

SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire = "fire",
	fire_last = "fire_last",
	fire_iron = "fire",
	fire_iron_last = "fire_last",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	holster = "holster",
	sprint_start = "sprint_in", 
	sprint_idle = "sprint", 
	sprint_end = "sprint_out", 
}

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 1.5
SWEP.CustomizationMenuAttachmentName = "1"

SWEP.DeployTime = 0.75
SWEP.HolsterTime = 0.75
SWEP.ReloadTime = 3
SWEP.ReloadTime_Empty = 4
SWEP.ReloadTimes = {
	Base = 3.17,
	Base_Empty = 4.57,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.FlashlightAttachmentName = "1"

SWEP.ViewModelMovementScale = 2

// shell-related stuff
SWEP.ShellVelocity = {X = 50, Y = -50, Z = 35}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = -180}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0
SWEP.ShellScale = 1
SWEP.ShellModel = "models/phunbase/shells/4_6x30mm.mdl"
SWEP.ShellEjectVelocity = 0
SWEP.FireModes = {"auto", "semi"}

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "MuzzleflashRifle", "muzzle_sparks_pistol", "btb_vm_overheat"}

SWEP.FireSound = "FG42_Single"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"cod_ww2_reflexsight", "cod_ww2_x4scope"}},
}

SWEP.AttachmentIronsights = {
["cod_ww2_x4scope"] = {pos = Vector(-3.772, 0.000, 0.792), ang = Vector(1.302, -0.891, 0.000)},
["cod_ww2_reflexsight"] = {pos = Vector(-3.430, -1.093, 0.865), ang = Vector(-0.019, 0.026, 0.000)}
}

SWEP.VElements = {
	["cod_ww2_reflexsight"] = { model = "models/codww2/weapons/fg42.mdl", bonemerge = true, stencilDebug = false, bodygroups = {[1] = 1, [2] = 1}, stencilmaterials = {1}},
}

SWEP.RTScope_Enabled = true
SWEP.RTScope_Zoom = 7.25
SWEP.RTScope_Reticle = Material("models/codww2/weapons/optics/kar98k_crosshair")
SWEP.RTScope_Material = Material("models/codww2/weapons/upgrades/lens1") 
SWEP.RTScope_Align = Angle(0,0,0)
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true

SWEP.Secondary.Ammo = ""
SWEP.Secondary.Delay = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true

SWEP.Sounds = {
	draw = {
		{time = 0, sound = "Rifle_Raise2", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "Rifle_Lower1", callback = function(self) end}
	},
	reload = {
		{time = 0, sound = "Rifle_Raise1"},
		{time = 1, sound = "Rifle_Lower3"},
		{time = 2.2, sound = "Rifle_Lower2"},
	},
		reload_empty = {
		{time = 0, sound = "Rifle_Raise1"},
		{time = 1.5, sound = "Rifle_Lower3"},
		{time = 3.55, sound = "Rifle_Lower2"}
	},
	sprint_in = {
		{time = 0, sound = "Rifle_Lower2"},
	},
	sprint_out = {
		{time = 0, sound = "Rifle_Raise1"},
	},
}

 // RECOIL
SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 0
SWEP.LuaViewmodelRecoil = true
SWEP.FullAimViewmodelRecoil = false
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 0.1
SWEP.LuaVMRecoilMod = 5 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0.1, hor = 0.1, roll = 0.1, forward = 0.1, pitch = 0.025} -- modifier for intensity of the recoil on varying axes