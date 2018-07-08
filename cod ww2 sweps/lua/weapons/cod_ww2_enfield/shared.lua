SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "Lee Enfield"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/codww2/weapons/enfield.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 0.8
SWEP.CustomizationMenuAttachmentName = "Laser"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_303brit"
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 100
SWEP.Primary.Delay = 1.3
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 5
SWEP.Spread	= 0.25
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(0.000, 0.000, 0.000)
SWEP.BaseAng = Vector(0.000, 0.000, 2.243)

SWEP.IronsightPos = Vector(-4.136, -4.098, 1.584)
SWEP.IronsightAng = Vector(-0.712, 0.013, 2.243)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.CustomizePos = Vector(2.222, -0.780, -2.559) 
SWEP.CustomizeAng = Vector(12.928, 17.873, 0.000)

SWEP.PistolSprintSway = false

SWEP.DisableIronsights = false
SWEP.EmptySoundPrimary = "Dryfire_Sniper"

local ang0 = Vector()

SWEP.VElements = {
["call_of_duty_world_war_2_7_times_magnification_marksman_rifle_scope_but_with_a_free_call_of_duty_world_war_2_executable_for_you_to_play_with"] = { type = "Model", model = "models/attachments/a_optic_enfield_7x.mdl", bone = "j_gun", rel = "", pos = Vector(-1.477, -0.281, 5.091), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", active = true, skin = 0, bodygroup = {} },
["call_of_duty_world_war_2_iron_sight_marksman_rifle_scope_but_with_a_free_call_of_duty_world_war_2_executable_for_you_to_play_with"] = { type = "Model", model = "models/attachments/a_iron_enfield.mdl", default = true, bone = "j_gun", rel = "", pos = Vector(-7.678, -2.866, 6.546), angle = Angle(0, 0, -1.744), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", active = true,  skin = 0, bodygroup = {} },	
}

SWEP.AttachmentIronsights = {
	["call_of_duty_world_war_2_7_times_magnification_marksman_rifle_scope_but_with_a_free_call_of_duty_world_war_2_executable_for_you_to_play_with"] = {pos = Vector(-4.119, -2.104, 1.145), ang = ang0},
	["call_of_duty_world_war_2_iron_sight_marksman_rifle_scope_but_with_a_free_call_of_duty_world_war_2_executable_for_you_to_play_with"] = {pos = Vector(-4.136, -4.098, 1.584), ang = ang0}
}

SWEP.Attachments = {
	[1] = {name = "Optics", attachments = {"call_of_duty_world_war_2_7_times_magnification_marksman_rifle_scope_but_with_a_free_call_of_duty_world_war_2_executable_for_you_to_play_with"}},
}



SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire = "fire",
	fire_last = "fire",
	fire_iron_last = "fire",
	fire_iron = "fire",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	holster = "holster",
	sprint_start = "sprint_in", 
	sprint_idle = "sprint", 
	sprint_end = "sprint_out", 
	bolt = "bolt",
}

SWEP.IdleAfterFire = false
SWEP.UseIronTransitionAnims = false 
SWEP.DeployTime = 0.75
SWEP.HolsterTime = 0.3
SWEP.ReloadTime = 3.45
SWEP.ReloadTime_Empty = 3.45
SWEP.FlashlightAttachmentName = "1"

SWEP.RTScope_Enabled = true
SWEP.RTScope_Zoom = 7.25
SWEP.RTScope_Reticle = Material("models/codww2/reticles/enfield_reticle")
SWEP.RTScope_Material = Material("models/weapons/optics/lense_rt") 
SWEP.RTScope_Align = Angle(0,0,0)
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true

SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 0, Y = 100, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.7
SWEP.ShellScale = 1
SWEP.ShellModel = "models/phunbase/shells/4_6x30mm.mdl"
SWEP.ShellEjectVelocity = 0

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "Muzzleflashsniper", "muzzle_sparks_pistol", "btb_vm_overheat"}

SWEP.FireSound = "enfield_Single"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay


SWEP.Sounds = {
	draw = {
		{time = 0, sound = "Rifle_Raise2", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "Rifle_Lower1", callback = function(self) end}
	},
	 fire = {
		{time = 0.2, sound = "", callback = function(wep) wep:PlayVMSequence("bolt") end},
	},
	reload = {
		{time = 0, sound = "Rifle_Raise1"},
		{time = 2.8, sound = "Rifle_Lower2"},
	},
		reload_empty = {
		{time = 0, sound = "Rifle_Raise1"},
		{time = 2.8, sound = "Rifle_Lower2"}
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
