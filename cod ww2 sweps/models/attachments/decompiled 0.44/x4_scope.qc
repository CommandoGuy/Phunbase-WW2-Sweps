// Created by Crowbar 0.44.0.0

$modelname "x4_scope.mdl"

$bodygroup "x4 scope"
{
	studio "x4_scope_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

$maxeyedeflection 90

$forcephonemecrossfade

$ambientboost

$mostlyopaque

$cdmaterials "models\codww2\weapons\upgrades\"

$cbox 0 0 0 0 0 0

$bbox -102.762 -43.629 -1.327 97.915 43.629 51.868


$sequence "idle" {
	"x4_scope_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
