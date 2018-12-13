SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "STG44"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 40
SWEP.ViewModel = "models/codww2/weapons/stg44.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "ar2"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "ar2"
SWEP.ReloadHoldType = "ar2"
SWEP.IdleAfterFire = true
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.UseIronTransitionAnims = true
SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_792x57"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 39
SWEP.Primary.Delay = 0.1
SWEP.Primary.Force = 15
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0
SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 1
SWEP.CustomizationMenuAttachmentName = "1"


// Recoil variables
SWEP.Recoil	= 1.06
SWEP.Spread	= 0.03
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(-1.000, 1.000, 0.000)
SWEP.BaseAng = Vector(0.000, 0.000, 0.000)

SWEP.IronsightPos = Vector(-3.619, -1.093, 0.150)
SWEP.IronsightAng = Vector(0.558, 0.014, 0.000)

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

SWEP.EmptySoundPrimary = "Dryfire_lmg"

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
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
}


SWEP.DeployTime = 0.75
SWEP.HolsterTime = 0.75
SWEP.ReloadTime = 2.2
SWEP.ReloadTime_Empty = 2.6
SWEP.ReloadTimes = {
	Base = 2.2,
	Base_Empty = 2.65,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.FlashlightAttachmentName = "1"

// shell-related stuff
SWEP.ShellVelocity = {X = 0, Y = -25, Z = 90}
SWEP.ShellAngularVelocity = {Pitch_Min = -1000, Pitch_Max = 1000, Yaw_Min = 0, Yaw_Max = 0, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/762x51.mdl"
SWEP.ShellEjectVelocity = 0
SWEP.FireModes = {"auto", "semi"}

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.AttachmentIronsights = {
["cod_ww2_x4scope"] = {pos = Vector(-3.561, 0.000, 0.184), ang = Vector(0.364, 0.078, 0.000)},
["cod_ww2_reflexsight"] = {pos = Vector(-3.683, 0.000, -0.111), ang = Vector(0.057, 0.014, 0.000)}
}

SWEP.VElements = {
	["cod_ww2_reflexsight"] = { model = "models/codww2/weapons/stg44.mdl", bonemerge = true, stencilDebug = false, bodygroups = {[1] = 1, [2] = 1}, stencilmaterials = {6}},
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"cod_ww2_reflexsight", "cod_ww2_x4scope"}},
}

SWEP.Sounds = {
	draw = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "WW2.HolsterRifle", callback = function(self) end}
	},
reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 1.5, sound = "WW2.Movement2"},
	},
	reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 2, sound = "WW2.Movement2"},
	},
}

SWEP.FireSound = "STG44_Single"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay

SWEP.Secondary.Ammo = ""
SWEP.Secondary.Delay = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true

SWEP.RTScope_Enabled = true
SWEP.RTScope_Zoom = 7.25
SWEP.RTScope_Reticle = Material("models/codww2/weapons/optics/zf4_crosshair")
SWEP.RTScope_Material = Material("models/codww2/weapons/upgrades/lens1")
SWEP.RTScope_Align = Angle(0,0,0)
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true

 // RECOIL
SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 0
SWEP.LuaViewmodelRecoil = true
SWEP.FullAimViewmodelRecoil = true
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 0.5
SWEP.LuaVMRecoilMod = 2.5 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0.15, roll = 0, forward = 0.25, pitch = 0} -- modifier for intensity of the recoil on varying axes
