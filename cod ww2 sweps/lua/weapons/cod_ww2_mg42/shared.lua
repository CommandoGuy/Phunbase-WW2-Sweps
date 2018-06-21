SWEP.Base = "phun_base"

SWEP.PrintName = "MG42"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 50
SWEP.AimViewModelFOV = 30
SWEP.ViewModel = "models/weapons/mg42.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "smg1"
SWEP.Primary.ClipSize = 200
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 0.05
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

SWEP.IronsightPos = Vector(-3.879, 0.000, 1.302)
SWEP.IronsightAng = Vector(0.372, 0.032, 0.000)

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
	holster = "holster",
	sprint_start = "sprint_in", 
	sprint_idle = "sprint", 
	sprint_end = "sprint_out", 
}


SWEP.DeployTime = 0.75
SWEP.HolsterTime = 0.75
SWEP.ReloadTime = 7
SWEP.ReloadTime_Empty = 7.25
SWEP.FlashlightAttachmentName = "1"
SWEP.Chamberable = false
SWEP.ViewModelMovementScale = 2

// shell-related stuff
SWEP.ShellVelocity = {X = 50, Y = -50, Z = 35}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 90}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0
SWEP.ShellScale = 1
SWEP.ShellModel = "models/phunbase/shells/7_62x54mm.mdl"
SWEP.ShellEjectVelocity = 0
SWEP.FireModes = {"auto"}

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"muzzle_glow_pistol", "btb_vm_medium", "muzzle_fire_pistol", "muzzle_sparks_bigb", "muzzle_sparks_bigb", "muzzleflash_suppressed", "btb_vm_overheat"}

SWEP.FireSound = "MG42_Fire"

SWEP.NormalFlashlight = false // enables the HL2 flashlight
SWEP.CustomFlashlight = true // enables a ProjectedTexture flashlight, you should disable the Normal one
SWEP.InstantFlashlight = true // whether turning the flashlight on/off is instant or it has a 0.5 second delay

SWEP.EnableCustomization = true
SWEP.CustomizationMenuSize = 1.5
SWEP.CustomizationMenuAttachmentName = "1"

SWEP.Attachments = {
	[1] = {name = "Finish", attachments = {"Normandy_Camouflage"}},
}




 // RECOIL
SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 0
SWEP.LuaViewmodelRecoil = true
SWEP.FullAimViewmodelRecoil = true
SWEP.LuaVMRecoilIntensity = 2
SWEP.LuaVMRecoilLowerSpeed = 0.1
SWEP.LuaVMRecoilMod = 5 -- modifier of overall intensity for the code based recoil
SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0, forward = 0.5, pitch = 0} -- modifier for intensity of the recoil on varying axes

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