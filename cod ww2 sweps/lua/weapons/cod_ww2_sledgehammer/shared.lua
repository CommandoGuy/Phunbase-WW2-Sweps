SWEP.Base = "pb_codww2_base"

SWEP.PrintName = "Sledgehammer"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 0
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 54
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/codww2/weapons/sledgehammer.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"

SWEP.HoldType = "melee"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "melee"
SWEP.ReloadHoldType = "melee"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables

SWEP.Primary.Ammo = ""
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true

SWEP.BasePos = Vector(0.000, 0.000, 0.000)
SWEP.BaseAng = Vector(0.000, 0.000, 0.000)

SWEP.IronsightPos = Vector(0.000, 0.000, 0.000)
SWEP.IronsightAng = Vector(0.000, 0.000, 0.000)

SWEP.SprintPos = Vector(0.000, 0.000, 0.000)
SWEP.SprintAng = Vector(0, 0.000, 0.000)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(1.510, -4.800, 1.030)
SWEP.NearWallAng = Vector(-13.560, 20.560, -11.080)

SWEP.PistolSprintSway = true
SWEP.UseIronTransitionAnims = false

SWEP.Sequences = {
	idle = "idle",
	deploy = "draw",
	attack1 = "melee_fatal",
	attack2 = "melee_fatal",
	miss = "swipe",
	holster = "holster",
	sprint_start = "sprint_in",
	sprint_idle = "sprint",
	sprint_end = "sprint_out"
}

SWEP.DeployTime = 0.75
SWEP.HolsterTime = 0.25
SWEP.ReloadTime = 0

SWEP.ViewModelMovementScale = 0.75

SWEP.NormalFlashlight = true
SWEP.CustomFlashlight = false
SWEP.FlashlightAttachmentName = "1"
SWEP.InstantFlashlight = false

SWEP.MeleeAttackWaitTime = 0.5
SWEP.MeleeRedeployWaitTime = 0.4
SWEP.MeleeDamage = 75
SWEP.MeleeDamageType = DMG_CLUB
SWEP.MeleeRange = 120

SWEP.MeleeSoundHitFlesh = "Weapon_Crowbar.Melee_Hit"
SWEP.MeleeSoundHitWorld = "physics/concrete/concrete_impact_bullet1.wav"
SWEP.MeleeSoundSwing = "Weapon_Crowbar.Single"

SWEP.CanUseUnderwater = true
SWEP.CanUseOnLadder = false

function SWEP:OnMeleeHit()
	self:EmitSound("Flesh.BulletImpact")
end

function SWEP:SecondaryAttack()
	return
end
