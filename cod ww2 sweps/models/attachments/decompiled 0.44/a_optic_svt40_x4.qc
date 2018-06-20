// Created by Crowbar 0.44.0.0

$modelname "attachments\a_optic_svt40_x4.mdl"

$bodygroup "studio"
{
	studio "a_optic_svt40_x4_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\weapons\svt40\"

$attachment "1" "muzzle" 0 0 0 rotate 0 0 0
$attachment "2" "shell" 0 0 0 rotate -20 0 0

$cbox 0 0 0 0 0 0

$bbox -9.06 -13.746 -11.152 35.709 4.189 0.736


$sectionframes 30 170

$sequence "idle" {
	"a_optic_svt40_x4_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "shoot" {
	"a_optic_svt40_x4_anims\shoot.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 30" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "shoot2" {
	"a_optic_svt40_x4_anims\shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 2
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 60" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload_empty" {
	"a_optic_svt40_x4_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_SVT40.Cloth1" }
	{ event 5004 23 "Weapon_SVT40.Clipout" }
	{ event 5004 45 "Weapon_SVT40.Cloth2" }
	{ event 5004 60 "Weapon_SVT40.Clipin" }
	{ event 5004 97 "Weapon_SVT40.ClipTap" }
	{ event 5004 120 "Weapon_SVT40.SlideBack" }
	{ event 5004 130 "Weapon_SVT40.SlideForward" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "first_draw" {
	"a_optic_svt40_x4_anims\first_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 6 "Weapon_SVT40.Cloth1" }
	{ event 5004 29 "Weapon_SVT40.SlideBack" }
	{ event 5004 39 "Weapon_SVT40.SlideForward" }
	{ event 5004 47 "Weapon_SVT40.Cloth2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
