SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "Maschinengewehr 42"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 50
SWEP.AimViewModelFOV = 40
SWEP.ViewModel = "models/codww2/weapons/mg42.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "rpg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "rpg"
SWEP.ReloadHoldType = "ar2"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_792x57"
SWEP.Primary.ClipSize = 50
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 34
SWEP.Primary.Delay = 0.05
SWEP.Primary.Force = 8
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0
SWEP.UsesBipod = true
SWEP.BipodTransitionDelay = 0.5

// Recoil variables
SWEP.Recoil	= 1.5
SWEP.Spread	= 0.09
SWEP.Spread_Iron = 0.01
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(-0.800, 0.000, -0.500)
SWEP.BaseAng = Vector(0.500, 0.000, 0.000)

SWEP.IronsightPos = Vector(-3.950, 0.000, 0.884)
SWEP.IronsightAng = Vector(0.200, 0.032, 0.000)

SWEP.CustomizePos = Vector(1.546, 0.000, -1.502)
SWEP.CustomizeAng = Vector(6.667, 10.892, 0.000)

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
	fire_iron_last = "fire",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	deploy_first = "draw_first",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out",
}


SWEP.DeployTime = 0.75
SWEP.DeployTime_First = 2
SWEP.HolsterTime = 0.75
SWEP.ReloadTime = 7
SWEP.ReloadTime_Empty = 7.25
SWEP.ReloadTimes = {
	Base = 7,
	Base_Empty = 7.25,
	Bipod = 7,
Bipod_Empty = 7.25,
}
SWEP.UsesEmptyReloadTimes = true
SWEP.Chamberable = false
SWEP.ViewModelMovementScale = 0.6

SWEP.Sounds = {
	draw = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end}
	},
	draw_first = {
		{time = 0, sound = "WW2.DrawRifle", callback = function(self) end},
		{time = 0.15, sound = "MG42_Charge"},
	},
	holster = {
		{time = 0, sound = "WW2.HolsterRifle", callback = function(self) end}
	},
reload = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 6.5, sound = "WW2.Movement2"},
	},
		reload_empty = {
		{time = 0, sound = "WW2.Movement1"},
		{time = 6.5, sound = "WW2.Movement2"},
	},
}


// shell-related stuff
SWEP.ShellVelocity = {X = 50, Y = -50, Z = 35}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0
SWEP.ShellScale = 1
SWEP.ShellModel = "models/phunbase/shells/4_6x30mm.mdl"
SWEP.ShellEjectVelocity = 0
SWEP.FireModes = {"auto"}

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "btb_vm_small", "muzzle_sparks_pistol", "weapon_muzzle_smoke"}

SWEP.FireSound = "MG42_Fire"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = false // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = false // whether turning the flashlight on/off is instant or it has a 0.5 second delay



 // RECOIL
SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 1
SWEP.LuaViewmodelRecoil = true
SWEP.FullAimViewmodelRecoil = true
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 1
SWEP.LuaVMRecoilMod = 2.5 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0.15, roll = 0.15, forward = 0.4, pitch = 0} -- modifier for intensity of the recoil on varying axes

SWEP.WhenBulletsShouldChangeCycle = 0.3

function SWEP:AdditionalThink()
    if CLIENT then
        local vm = self.VM
        if vm then
            local howMany = (self.Sequence):find("reload") and (self.Cycle < self.WhenBulletsShouldChangeCycle and self.HadInClip or self:calcAmmoLeft()) or self:Clip1()

            local bullets = math.Clamp(howMany, 0, 16)
            vm:SetBodygroup(1, bullets)
        end
    end
end

function SWEP:BipodModeAnimLogic()
	if self:GetBipodState() == PB_BIPODSTATE_ENTER then
		self:PlayVMSequence("in")
	else
		self:PlayVMSequence("out")
	end
end
