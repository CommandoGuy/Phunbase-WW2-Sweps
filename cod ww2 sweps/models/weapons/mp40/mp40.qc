// Created by Crowbar 0.44.0.0

$modelname "mp40.mdl"

$bodygroup "studio"
{
	studio "mp40arms.smd"
}

$bodygroup "studio"
{
	studio "mp40arms_spec.smd"
}






$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\arms\"
$cdmaterials "models\weapons\mp40\"
$cdmaterials "models\codww2\weapons\"

$attachment "1" "tag_weapon" 20.80 0.00 4.50 rotate -0 0 0
$attachment "2" "tag_weapon" 9.00 -0.00 4.50 rotate -0 0 50

$cbox 0 0 0 0 0 0

$bbox -3.718 -17.143 -58 32.853 15.986 94.4

$bonemerge "tag_origin"
$bonemerge "tag_view"
$bonemerge "tag_ads"
$bonemerge "tag_torso"
$bonemerge "j_mainroot"
$bonemerge "j_spinelower"
$bonemerge "j_spineupper"
$bonemerge "j_clavicle_le"
$bonemerge "j_shoulder_le"
$bonemerge "j_elbow_le"
$bonemerge "j_wrist_le"
$bonemerge "j_metaindex_le_1"
$bonemerge "j_index_le_1"
$bonemerge "j_index_le_2"
$bonemerge "j_index_le_3"
$bonemerge "j_metamid_le_1"
$bonemerge "j_mid_le_1"
$bonemerge "j_mid_le_2"
$bonemerge "j_mid_le_3"
$bonemerge "j_metapinky_le_1"
$bonemerge "j_pinky_le_1"
$bonemerge "j_pinky_le_2"
$bonemerge "j_pinky_le_3"
$bonemerge "j_metaring_le_1"
$bonemerge "j_ring_le_1"
$bonemerge "j_ring_le_2"
$bonemerge "j_ring_le_3"
$bonemerge "j_thumb_le_1"
$bonemerge "j_thumb_le_2"
$bonemerge "j_thumb_le_3"
$bonemerge "j_clavicle_ri"
$bonemerge "j_shoulder_ri"
$bonemerge "j_elbow_ri"
$bonemerge "j_wrist_ri"
$bonemerge "j_metaindex_ri_1"
$bonemerge "j_index_ri_1"
$bonemerge "j_index_ri_2"
$bonemerge "j_index_ri_3"
$bonemerge "j_metamid_ri_1"
$bonemerge "j_mid_ri_1"
$bonemerge "j_mid_ri_2"
$bonemerge "j_mid_ri_3"
$bonemerge "j_metapinky_ri_1"
$bonemerge "j_pinky_ri_1"
$bonemerge "j_pinky_ri_2"
$bonemerge "j_pinky_ri_3"
$bonemerge "j_metaring_ri_1"
$bonemerge "j_ring_ri_1"
$bonemerge "j_ring_ri_2"
$bonemerge "j_ring_ri_3"
$bonemerge "j_thumb_ri_1"
$bonemerge "j_thumb_ri_2"
$bonemerge "j_thumb_ri_3"





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
	{ event 5004 13 "MP40_Magout" }
	{ event 5004 35 "MP40_Magin" }
	{ event 5004 60 "MP40_Bolt" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "reload" {
	"fg42_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 13 "MP40_Magout" }
	{ event 5004 35 "MP40_Magin" }
	fadein 0.2
	fadeout 0.2
	fps 40
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
	snap
}

$sequence "holster" {
	"fg42_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint" {
	"fg42_anims\sprint.smd"
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 3
	fps 30
	loop
}

$sequence "sprint_in" {
	"fg42_anims\sprint_in.smd"
	activity "ACT_VM_SPRINT_IN" 1
	fadein 0.2
	fadeout 3
	fps 30
}

$sequence "sprint_out" {
	"fg42_anims\sprint_out.smd"
	activity "ACT_VM_SPRINT_OUT" 1
	fadein 0.2
	fadeout 3
	fps 30
}