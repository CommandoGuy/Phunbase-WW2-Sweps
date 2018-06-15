// Created by Crowbar 0.54

$modelname "gmod4phun\codww2_dual_1911.mdl"

// you can use the meshes from the old version/your meshes as long as you didnt edit the bones on them
$bodygroup "gun_left"
{
	studio "dual_custom_colt_left.smd"
}

$bodygroup "gun_right"
{
	studio "dual_custom_colt_right.smd"
}

// you can remove the hands and slap on c_hands
$bodygroup "hands"
{
	studio "bandaged_arms.smd"
}

$surfaceprop "default"
$contents "solid"

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_Neck1"
$bonemerge "ValveBiped.Bip01_Head1"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "tag_brass_left"
$bonemerge "tag_brass_right"
$bonemerge "tag_silencer_left"
$bonemerge "tag_silencer_right"
$bonemerge "tag_weapon_left"
$bonemerge "tag_weapon_right"

$attachment "muzzle_right" "tag_silencer_right" 0 0 0 rotate 0 0 0
$attachment "shelleject_right" "tag_brass_right" 0 0 0 rotate -30 0 0
$attachment "muzzle_left" "tag_silencer_left" 0 0 0 rotate 0 0 0
$attachment "shelleject_left" "tag_brass_left" 0 0 0 rotate -30 0 0

$cdmaterials "models\arms\"
$cdmaterials "models\weapons\m1911\"
$cdmaterials "models\codww2\weapons\"



// proper blender anims

$pushd	".\anims\"

$sequence draw "draw.smd" snap
$sequence fire_both "fire_both.smd" fadein 0.05 fadeout 0.05
$sequence fire_left "fire_left_fix.smd" fadein 0.05 fadeout 0.05
$sequence fire_right "fire_right_fix.smd" fadein 0.05 fadeout 0.05
$sequence holster "holster.smd"
$sequence idle "idle.smd" loop

$sequence "reload_both" {
	"reload_both.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 13 "m1911_clipout1" } 
	{ event 5004 18 "m1911_clipout2" }
	{ event 5004 38 "m1911_clipin1" }
	{ event 5004 52 "m1911_clipin2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
$sequence "reload_both_empty" {
	"reload_both_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 13 "m1911_clipout1" } 
	{ event 5004 18 "m1911_clipout2" }
	{ event 5004 38 "m1911_clipin1" }
	{ event 5004 52 "m1911_clipin2" }
	{ event 5004 62 "m1911_slide1" }
	{ event 5004 64 "m1911_slide2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence reload_both_leftempty "reload_both_leftempty.smd"
$sequence reload_both_rightempty "reload_both_rightempty.smd"
$sequence sprint_in "sprint_in.smd"
$sequence sprint_loop "sprint_loop.smd" loop

$popd
