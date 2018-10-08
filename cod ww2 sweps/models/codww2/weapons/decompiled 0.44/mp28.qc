// Created by Crowbar 0.44.0.0

$modelname "mp28.mdl"

$bodygroup "studio"
{
	studio "mp28_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$maxeyedeflection 90

$cdmaterials "models\arms\"
$cdmaterials "models\codww2\weapons\mp28\"

$attachment "1" "tag_weapon" 19.65 0 4.5 rotate 0 0 0
$attachment "2" "tag_bullet_base" 0 -1 0 rotate 0 -90 0

$cbox 0 0 0 0 0 0

$bbox -3.718 -17.143 -58 32.853 15.986 94.4

$bonemerge "Joints1"
$bonemerge "Joints"
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
$bonemerge "j_wristfronttwist1_le"
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
$bonemerge "j_wristfronttwist1_ri"


$sequence "idle" {
	"mp28_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"mp28_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty" {
	"mp28_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 15 "MP28_Magout" }
	{ event 5004 46 "MP28_Magin" }
	{ event 5004 60 "MP28_Bolt" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload" {
	"mp28_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 15 "MP28_Magout" }
	{ event 5004 46 "MP28_Magin" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"mp28_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 40
}

$sequence "fire_last" {
	"mp28_anims\fire_last.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 40
}

$sequence "fire_ads" {
	"mp28_anims\fire_ads.smd"
	activity "ACT_VM_PRIMARYATTACK_2" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 40
}

$sequence "fire_ads_last" {
	"mp28_anims\fire_ads_last.smd"
	activity "ACT_VM_PRIMARYATTACK_2" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 40
}

$sequence "holster" {
	"mp28_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint" {
	"mp28_anims\sprint.smd"
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 3
	fps 25
}

$sequence "sprint_in" {
	"mp28_anims\sprint_in.smd"
	activity "ACT_VM_SPRINT_IN" 1
	fadein 0.2
	fadeout 3
	fps 25
}

$sequence "sprint_out" {
	"mp28_anims\sprint_out.smd"
	activity "ACT_VM_SPRINT_OUT" 1
	fadein 0.2
	fadeout 3
	fps 25
}
