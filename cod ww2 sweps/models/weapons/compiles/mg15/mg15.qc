// Created by Crowbar 0.44.0.0

$modelname "mg15.mdl"

$bodygroup "studio"
{
	studio "mg15_spec.smd"
}

$bodygroup "studio"
{
	studio "mg15.smd"
}

$bodygroup "arms"
{
	studio "bandaged_arms.smd"
}


$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\arms\"
$cdmaterials "models\weapons\mg15\"
$cdmaterials "models\codww2\weapons\"

$attachment "1" "tag_weapon" 38.00 -0.00 4.45 rotate -0 0 0
$attachment "2" "tag_weapon" 14.90 3.00 4.50 rotate -0 0 0

$cbox 0 0 0 0 0 0

$bbox -3.718 -17.143 -58 32.853 15.986 94.4



$sequence "idle" {
	"fg42_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"fg42_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty" {
	"fg42_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 13 "MG15_BoltBack" }
	{ event 5004 93 "MG15_Magout" }
	{ event 5004 158 "MG15_Magout" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload" {
	"fg42_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 93 "MG15_Magout" }
	{ event 5004 158 "MG15_Magout" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"fg42_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 40
	snap
}

$sequence "fire_last" {
	"fg42_anims\fire_last.smd"
	activity "ACT_VM_PRIMARYATTACK_2" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "holster" {
	"fg42_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint" {
	"fg42_anims\sprint_loop.smd"
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 3
	fps 25
}

$sequence "sprint_in" {
	"fg42_anims\sprint_in.smd"
	activity "ACT_VM_SPRINT_IN" 1
	fadein 0.2
	fadeout 3
	fps 25
}

$sequence "sprint_out" {
	"fg42_anims\sprint_out.smd"
	activity "ACT_VM_SPRINT_OUT" 1
	fadein 0.2
	fadeout 3
	fps 25
}

