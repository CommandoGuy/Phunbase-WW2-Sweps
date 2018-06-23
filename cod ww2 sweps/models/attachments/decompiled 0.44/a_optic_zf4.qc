// Created by Crowbar 0.44.0.0

$modelname "weapons\upgrades\a_optic_zf4.mdl"

$bodygroup "scope"
{
	studio "a_optic_zf4_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\weapons\upgrades\"
$cdmaterials "models\weapons\optics\"

$attachment "scope_origin" "A_RenderPoint" 0 0 0 rotate 0 0 0
$attachment "scope_align" "A_RenderAlign" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -1.779 -1.11 -1.736 1000 0.131 0.88


$sequence "scope_idle" {
	"a_optic_zf4_anims\scope_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "scope_zoom" {
	"a_optic_zf4_anims\scope_zoom.smd"
	activity "ACT_VM_ZOOM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
