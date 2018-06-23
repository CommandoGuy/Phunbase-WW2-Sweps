// Created by Crowbar 0.44.0.0

$modelname "stielhandgranante.mdl"

$bodygroup "studio"
{
	studio "stielhandgranate.smd"
}
$bodygroup "studio"
{
	studio "enfield_body1_model0.smd"
}


$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\arms\"
$cdmaterials "models\weapons\stielhandgranate\"

$attachment "1" "tag_weapon" 26.8 0 4.5 rotate 0 0 0
$attachment "2" "tag_weapon" 3 0 4.5 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -3.718 -17.143 -58 32.853 15.986 94.4


$sectionframes 30 137

$sequence "idle" {
	"enfield_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "pullpin" {
	"enfield_anims\pullpin.smd"
	activity "ACT_VM_PULLPIN" 1
	fadein 0.2
	fadeout 0.2
	fps 25
}

$sequence "throw" {
	"enfield_anims\throw.smd"
	activity "ACT_VM_THROW" 1
	{ event 5004 0 "enfield_boltback" }
	fadein 0.2
	fadeout 0.2
	fps 20
}
