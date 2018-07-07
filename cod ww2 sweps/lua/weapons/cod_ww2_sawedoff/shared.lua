SWEP.Base = "phun_base"

SWEP.PrintName = "Sawed-off"
SWEP.Category = "PHUNBASE | COD WWII"
SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.ViewModelFOV = 54
SWEP.AimViewModelFOV = 54
SWEP.ViewModel = "models/weapons/sawedoff_c.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"

SWEP.HoldType = "shotgun"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "shotgun"
SWEP.ReloadHoldType = "shotgun"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.NoSprintVMMovement = true
// weapon specific variables
SWEP.Primary.Ammo = "phunbase_12gauge"
SWEP.Primary.ClipSize = 2
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 22
SWEP.Primary.Delay = 0.75
SWEP.Primary.Force = 5
SWEP.Primary.Bullets = 7
SWEP.Primary.Tracer = 0

// Recoil variables
SWEP.Recoil	= 12
SWEP.Spread	= 0.075
SWEP.Spread_Iron = 0.065
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 0.9
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.Secondary.Delay = 0.9
SWEP.Secondary.Bullets = 12

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-3.336, -5, 1.230)
SWEP.IronsightAng = Vector(0.668, 0.000, 0.000)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Vector(0,0,0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(-0.429, -8.035, -9.005)
SWEP.NearWallAng = Vector(28.318, 26.918, -14.25)

SWEP.PistolSprintSway = true

SWEP.DisableIronsights = true

SWEP.Sequences = {
	idle = "idle",
	fire = "fire",
	fire_last = "fire",
	fire_secondary = "fire",
	fire_iron = "fire",
	fire_iron_last = "fire",
	reload = "reload",
	reload_empty = "reload_empty",
	deploy = "draw",
	holster = "holster",
	sprint_start = "sprint_in", 
	sprint_idle = "sprint", 
	sprint_end = "sprint_out", 
}

SWEP.Sounds = {
	draw = {
		{time = 0, sound = "Rifle_Raise2", callback = function(self) end}
	},
	holster = {
		{time = 0, sound = "Rifle_Lower1", callback = function(self) end}
	},
	sprint_in = {
		{time = 0, sound = "Rifle_Lower2"},
	},
	sprint_out = {
		{time = 0, sound = "Rifle_Raise1"},
	},
}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.75
SWEP.ReloadTime = 3.5
SWEP.ReloadTime_Empty = 4
SWEP.Chamberable = false

SWEP.Secondary.Delay = 0.5
SWEP.Secondary.Bullets = 12
SWEP.Secondary.TakePerShot = 2

SWEP.ViewModelMovementScale = 1.2

// shell-related stuff
SWEP.ShellVelocity = {X = -150, Y = 0, Z = -30}
SWEP.ShellAngularVelocity = {Pitch_Min = -500, Pitch_Max = 200, Yaw_Min = 0, Yaw_Max = 1000, Roll_Min = -200, Roll_Max = 100}
SWEP.ShellViewAngleAlign = {Forward = 200, Right = 0	, Up = 0}
SWEP.ShellAttachmentName = "2"
SWEP.ShellDelay = 0.45
SWEP.ShellScale = 0.5
SWEP.ShellModel = "models/phunbase/shells/12g_bird_open.mdl"
SWEP.ShellSound = "PB_SHELLIMPACT_SHOTGUN"
SWEP.ShellEjectVelocity = 10

SWEP.MuzzleAttachmentName = "1"
SWEP.MuzzleEffect = {"PistolGlow", "Muzzleflashshotgun", "muzzle_sparks_pistol", "btb_vm_overheat"}

SWEP.FireSound = "sawedoff_single"
SWEP.FireSoundSecondary = "sawedoff_single"


SWEP.NormalFlashlight = true
SWEP.CustomFlashlight = false

function SWEP:_setupOrigValues()
	if !self.Primary.Delay_Orig then self.Primary.Delay_Orig = self.Primary.Delay end
	if !self.Primary.Bullets_Orig then self.Primary.Bullets_Orig = self.Primary.Bullets end
	if !self.Primary.TakePerShot_Orig then self.Primary.TakePerShot_Orig = self.Primary.TakePerShot end
	if !self.FireSound_Orig then self.FireSound_Orig = self.FireSound end
	if !self.FireSeq_Orig then self.FireSeq_Orig = self.Sequences.fire end
	if !self.FireSeqIron_Orig then self.FireSeqIron_Orig = self.Sequences.fire_iron end
end

function SWEP:_setupPrimaryValues()
	self.Primary.Delay = self.Primary.Delay_Orig
	self.Primary.Bullets = self.Primary.Bullets_Orig
	self.Primary.TakePerShot = self.Primary.TakePerShot_Orig
	self.FireSound = self.FireSound_Orig
end

function SWEP:_setupSecondaryValues()
	self.Primary.Delay = self.Secondary.Delay
	self.Primary.Bullets = self.Secondary.Bullets
	self.Primary.TakePerShot = self.Secondary.TakePerShot
	self.FireSound = self.FireSoundSecondary
end

function SWEP:PrimaryAttack()
	self:_setupOrigValues()
	self:_setupPrimaryValues()
	
	self:_primaryAttack()
end

function SWEP:SecondaryAttack()
	self:_setupOrigValues()
	if self:Clip1() == 1 then
		self:_setupPrimaryValues()
		self._IsSecondary = false
	else
		self:_setupSecondaryValues()
		self._IsSecondary = true
	end
	
	self:_primaryAttack(self._IsSecondary)
end