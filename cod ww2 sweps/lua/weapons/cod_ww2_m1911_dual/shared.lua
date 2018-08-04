SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "M1911 Dual"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 54
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/codww2/weapons/codww2_dual_1911.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.UseHands = false

SWEP.HoldType = "revolver"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "pistol"
SWEP.ReloadHoldType = "pistol"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_45acp"
SWEP.Primary.ClipSize = 14
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 20
SWEP.Primary.Delay = 0.1
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 0.45
SWEP.Spread	= 0.02
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2
SWEP.DisableIronsights = true
SWEP.BasePos = Vector(0,-2,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(0,0,2.25)
SWEP.IronsightAng = Vector(0,0,0)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0, -10, 0)
SWEP.NearWallAng = Vector(0, 0, 0)

SWEP.PistolSprintSway = true

SWEP.Chamberable = false

-- local function other_gun_think(wep, ent)
	-- local vm = wep.VM
	-- if vm and ent then
		-- ent:SetSequence(vm:GetSequence()-1)
		-- ent:SetCycle(vm:GetCycle())
	-- end
-- end

-- SWEP.VElements = {
	-- ["other_gun"] = {bone = "tag_ads", model = "models/gmod4phun/codww2_dual_1911.mdl", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), active = true, thinkFunc = other_gun_think},
-- }

SWEP.BoneManipTable = {
	["j_elbow_ri"] = { scale = Vector(1, 1, 1), pos = Vector(-0.5, 0, 3), angle = Angle(0, 0, 0) },
	["j_gun_right"] = { scale = Vector(1, 1, 1), pos = Vector(0, 3, 0), angle = Angle(0, 0, 0) },
	["j_gun_left"] = { scale = Vector(1, 1, 1), pos = Vector(0, -3, 0), angle = Angle(0, 0, 0) },
	["j_elbow_le"] = { scale = Vector(1, 1, 1), pos = Vector(-0.5, 0, -3), angle = Angle(0, 0, 0) },
	//["j_silencer_right"] = { scale = Vector(1, 1, 1), pos = Vector(100, -3, 0), angle = Angle(0, 0, 0) },
	//["j_silencer_left"] = { scale = Vector(1, 1, 1), pos = Vector(100, 3, 0), angle = Angle(0, 0, 0) },
}

function SWEP:ThinkOverrideClient()
	// ironsights bone manipulation
	self.EnableBoneManipulation = self:GetIron()
end

SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle",
	idle_iron_empty = "idle",
	fire_left = "fire_left",
	fire_right = "fire_right",
	fire_left_iron = "fire_left",
	fire_right_iron = "fire_right",
	reload = "reload_both",
	reload_empty = "reload_both_empty",
	deploy = "draw",
	holster = "holster",
	lighton = "idle",
	lighton_iron = "idle",
	goto_iron = "idle",
	goto_hip = "idle",
	sprint_start = "sprint_in",
	sprint_idle = "sprint_loop",
	sprint_end = "draw",
}


SWEP.DeployTime = 0.53
SWEP.HolsterTime = 0.4
SWEP.ReloadTime = 2.5
SWEP.ReloadTimes = {
	Base = 2.5,
}
SWEP.UsesEmptyReloadTimes = false

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 0, Y = 100, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 100}
SWEP.ShellAttachmentName = "1"
SWEP.ShellDelay = 0.075
SWEP.ShellScale = 0.6
SWEP.ShellModel = "models/phunbase/shells/45acp.mdl"
SWEP.ShellEjectVelocity = 50

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"PistolGlow", "Muzzleflashpistol", "muzzle_sparks_pistol", "btb_vm_overheat"}

SWEP.IsDual = true
SWEP.MuzzleAttachmentName_L = "muzzle_left"
SWEP.MuzzleAttachmentName_R = "muzzle_right"
SWEP.ShellAttachmentName_L = "shelleject_left"
SWEP.ShellAttachmentName_R = "shelleject_right"
SWEP.UseIronTransitionAnims = false

SWEP.FireMoveMod_Iron = 1

SWEP.FireSound = "m1911_fire"

SWEP.NormalFlashlight = true
SWEP.CustomFlashlight = false
