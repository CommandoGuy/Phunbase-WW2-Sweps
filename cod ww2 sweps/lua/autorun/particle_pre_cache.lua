-- Add and precache particles.
local particlefiles = {
	"btb_vm_effects.pcf",
	"btb_vm_overheat.pcf",
	"bf3_fx.pcf"
}

for k, v in pairs(particlefiles) do
	game.AddParticles("particles/"..v)
end

local particlenames = {
	"btb_vm_small",
	"btb_vm_medium",
	"btb_vm_large",
	"btb_vm_overheat",
	"MuzzleflashRifle",	
	"Muzzleflashpistol",
	"Muzzleflashshotgun",
	"Muzzleflashsmg",
	"Muzzleflashsniper"
}

for k, v in pairs(particlenames) do
	PrecacheParticleSystem(v)
end
