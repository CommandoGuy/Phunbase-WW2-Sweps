-- Add and precache particles.
local particlefiles = {
	"btb_vm_effects.pcf",
	"btb_vm_overheat.pcf",
	"weapon_fx_fix.pcf"
}

for k, v in pairs(particlefiles) do
	game.AddParticles("particles/"..v)
end

local particlenames = {
	"btb_vm_small",
	"btb_vm_medium",
	"btb_vm_large",
	"btb_vm_overheat",
	"btb_wm_explosion",
	"weapon_shell_casing_rifle",
	"weapon_shell_casing_rifle_fallback",
	"weapon_shell_casing_shotgun",
	"weapon_shell_casing_shotgun_fallback",
	"weapon_shell_casing_9mm_fp",
	"weapon_muzzle_flash_pistol",
	"barrel_smoke",
	"weapon_muzzle_flash_smg",
	"weapon_muzzle_flash_assaultrifle",
	"weapon_muzzle_flash_autoshotgun",
	"weapon_muzzle_flash_huntingrifle",
}

for k, v in pairs(particlenames) do
	PrecacheParticleSystem(v)
end
