SWEP.Base = "pb_codww2_base"
include("panzerschreck_sounds.lua")
SWEP.PrintName = "Panzerschreck"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 50
SWEP.ViewModel = "models/codww2/weapons/panzerschreck.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true



SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_rocket"
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 200
SWEP.Primary.Delay = 1
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 0
SWEP.Primary.Tracer = 0
SWEP.Primary.Spread = 0
SWEP.MouseSensitivityIron = 0.25

// Recoil variables
SWEP.Recoil	= 5
SWEP.Spread	= 0.1
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.5
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.1

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-5.395, -7.308, 2.682)
SWEP.IronsightAng = Vector(20.103, -8.049, 0.000)

SWEP.CustomizePos = Vector(2.222, -0.780, -2.559)
SWEP.CustomizeAng = Vector(12.928, 17.873, 0.000)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Vector(0, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = false
SWEP.Chamberable = false
SWEP.DisableIronsights = false
SWEP.EmptySoundPrimary = "Dryfire_Sniper"


SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	fire = "fire",
	fire_last = "fire_last",
	fire_iron_last = "fire_ads_last",
	fire_iron = "fire_ads",
	reload = "reload",
	reload_empty = "reload",
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
SWEP.ReloadTimes = {
	Base = 2.83,
	Base_Empty = 2.83,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.FlashlightAttachmentName = "1"

SWEP.IronTransitionFireWaitTime = 0.4
SWEP.OnlyIronFire = true

SWEP.ViewModelMovementScale = 1

// shell-related stuff
SWEP.ShellVelocity = {X = 0, Y = 100, Z = 50}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.01
SWEP.ShellScale = 1
SWEP.ShellModel = "models/codww2/shells/762x51.mdl"
SWEP.ShellEjectVelocity = 0
SWEP.NoShells = true

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "weapon_muzzle_smoke_b", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "Panzer.fire"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay

SWEP.Sounds = {
		draw = {
		{time = 0, sound = "WW2.DrawLauncher", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "WW2.HolsterLauncher", callback = function(self) end}
	},

	reload = {
		{time = 0, sound = "WW2.Movement1", callback = function(self) end},
		{time = 0.75, sound = "Panzer.Load", callback = function(self) end},
		{time = 1.5, sound = "WW2.Movement2", callback = function(self) end}
	},
}

SWEP.Secondary.Ammo = ""
SWEP.Secondary.Delay = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true

 // RECOIL
SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 1
SWEP.LuaViewmodelRecoil = true
SWEP.FullAimViewmodelRecoil = true
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 1
SWEP.LuaVMRecoilMod = 2.25 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0, forward = 0, pitch = 0} -- modifier for intensity of the recoil on varying axes

function SWEP:PrimaryAttackOverride()
	if SERVER then
		local ply = self.Owner
		local pos = ply:GetShootPos()
		local eyeAng = ply:EyeAngles()
		local offset = eyeAng:Forward() * 24

		if !self:GetIron() then
			offset = offset + eyeAng:Right() * 6
		end

		local nade = ents.Create("pb_codww2_rocket")
		nade:SetPos(pos + offset)
		nade:SetAngles(eyeAng)
		nade:Spawn()
		nade:Activate()
		nade:SetOwner(ply)
	end
end
