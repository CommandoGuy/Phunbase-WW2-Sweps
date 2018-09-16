
--universal---------------------------------------------------------------

sound.Add({
	name = 			"Rifle_Raise1",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		0.5,
	sound = 			"universal/rifle_raise1.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"Rifle_Raise2",			
	channel = 		CHAN_STATIC,
	volume = 		0.5,
	sound = 			"universal/rifle_raise2.wav"	
})

sound.Add({
	name = 			"Rifle_Lower1",			
	channel = 		CHAN_STATIC,
	volume = 		0.5,
	sound = 			"universal/rifle_lower1.wav"	
})

sound.Add({
	name = 			"Rifle_Lower2",			
	channel = 		CHAN_STATIC,
	volume = 		0.5,
	sound = 			"universal/rifle_lower2.wav"	
})

sound.Add({
	name = 			"Rifle_Lower3",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/sprint1.wav"	
})

sound.Add({
	name = 			"Draw",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/draw.wav"	
})

sound.Add({
	name = 			"Holster",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/holster.wav"	
})

sound.Add({
	name = 			"Dryfire_Pistol",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/dryfire_pistol.wav"	
})

sound.Add({
	name = 			"Dryfire_AR",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/dryfire_ar.wav"	
})

sound.Add({
	name = 			"Dryfire_LMG",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/dryfire_lmg.wav"	
})

sound.Add({
	name = 			"Dryfire_SG",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/dryfire_sg.wav"	
})

sound.Add({
	name = 			"Dryfire_Sniper",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/dryfire_sniper.wav"	
})


sound.Add({
	name = 			"ShellBounce_WW2",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"universal/shell_bounce1.wav",	
	sound = 			"universal/shell_bounce2.wav",	
	sound = 			"universal/shell_bounce3.wav",	
	sound = 			"universal/shell_bounce4.wav",
	sound = 			"universal/shell_bounce5.wav",
	sound = 			"universal/shell_bounce6.wav"		
})

sound.Add({
	name = 			"Thompson_StartReload",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/thompson/StartReload.wav"	
})

sound.Add({
	name = 			"Thompson_EndReload",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/thompson/endReload.wav"	
})

sound.Add({
	name = 			"Thompson_MagTransition",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/thompson/MagTransition.wav"	
})

sound.Add({
	name = 			"Thompson_Draw",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/thompson/Draw.wav"	
})

sound.Add({
	name = 			"Thompson_AfterMagIn",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/thompson/AfterMagIn.wav"	
})


PHUNBASE:addRegularSound("Reload_Start", "universal/reload_magout1.wav", "universal/reload_magout2.wav", "universal/reload_magout3.wav")
PHUNBASE:addRegularSound("Reload_End", "universal/reload_end1.wav", "universal/reload_end2.wav", "universal/reload_end3.wav")
PHUNBASE:addRegularSound("Reload_Grab", "universal/reload_magin1.wav", "universal/reload_magin2.wav")

--fg42---------------------------------------------------------------

sound.Add({
	name = 			"FG42_Single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/fg42/shot.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"FG42_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/fg42/magout.wav"	
})

sound.Add({
	name = 			"FG42_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/fg42/magin.wav"	
})

sound.Add({
	name = 			"FG42_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/fg42/bolt.wav"	
})

--g43---------------------------------------------------------------

sound.Add({
	name = 			"G43_Single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/g43/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"G43_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/g43/magout.wav"	
})

sound.Add({
	name = 			"G43_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/g43/magin.wav"	
})

sound.Add({
	name = 			"G43_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/g43/bolt.wav"	
})

--g43---------------------------------------------------------------

sound.Add({
	name = 			"P38_Single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/p38/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"P38_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/p38/magout.wav"	
})

sound.Add({
	name = 			"P38_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/p38/magin.wav"	
})

sound.Add({
	name = 			"P38_Slide",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/p38/slide.wav"	
})


--svt---------------------------------------------------------------

sound.Add({
	name = 			"SVT_Single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		0.75,
	sound = 			"weapons/svt/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"SVT_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/svt/magout.wav"	
})

sound.Add({
	name = 			"SVT_MagoutEmpty",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/svt/magoutE.wav"	
})

sound.Add({
	name = 			"SVT_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/svt/magin.wav"	
})

sound.Add({
	name = 			"SVT_MaginEmpty",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/svt/maginE.wav"	
})

sound.Add({
	name = 			"SVT_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/svt/bolt.wav"	
})

--enfield---------------------------------------------------------------

sound.Add({
	name = 			"enfield_single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1,
	sound = 			"weapons/enfield/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"enfield_magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/enfield/magin.wav"	
})

sound.Add({
	name = 			"enfield_ping",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/enfield/ping.wav"	
})

sound.Add({
	name = 			"enfield_boltforward",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/enfield/boltforward.wav"	
})

sound.Add({
	name = 			"enfield_boltback",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/enfield/boltbackward.wav"	
})

--mp40---------------------------------------------------------------

sound.Add({
	name = 			"MP40_Single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1,
	sound = 			"weapons/MP40/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"MP40_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/MP40/magin.wav"	
})

sound.Add({
	name = 			"MP40_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/MP40/magout.wav"	
})

sound.Add({
	name = 			"MP40_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/MP40/bolt.wav"	
})

--trench---------------------------------------------------------------

sound.Add({
	name = 			"Trench_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1,
	sound = 			"weapons/trench/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"trench_pumpback",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/trench/pumpback.wav"	
})

sound.Add({
	name = 			"trench_Insert",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/trench/insert.wav"	
})

sound.Add({
	name = 			"trench_pumpforward",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/trench/pumpforward.wav"	
})

--c96---------------------------------------------------------------

sound.Add({
	name = 			"C96_Single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1,
	sound = 			"weapons/c96/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"C96_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/c96/magout.wav"	
})

sound.Add({
	name = 			"C96_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/c96/magin.wav"	
})

sound.Add({
	name = 			"C96_Boltrelease",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/c96/bolt.wav"	
})

--sawedoff---------------------------------------------------------------

sound.Add({
	name = 			"sawedoff_single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1,
	sound = 			"weapons/sawedoff/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"sawedoff_open",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/sawedoff/open.wav"	
})

sound.Add({
	name = 			"sawedoff_shellsE",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/sawedoff/eject2.wav"	
})

sound.Add({
	name = 			"sawedoff_shells",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/sawedoff/eject1.wav"	
})

sound.Add({
	name = 			"sawedoff_shellin1",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/sawedoff/insert1.wav"	
})


sound.Add({
	name = 			"sawedoff_shellin2",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/sawedoff/insert2.wav"	
})


sound.Add({
	name = 			"sawedoff_close",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/sawedoff/close.wav"	
})



--m1911---------------------------------------------------------------

sound.Add({
	name = 			"m1911_fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/m1911/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"m1911_clipout2",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1911/magout.wav"	
})

sound.Add({
	name = 			"m1911_clipin1",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1911/magin.wav"	
})

sound.Add({
	name = 			"m1911_clipin2",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1911/magin.wav"	
})

sound.Add({
	name = 			"m1911_slide1",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1911/slideforward.wav"	
})

sound.Add({
	name = 			"m1911_slide2",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1911/slideforward.wav"	
})


--volkssturmgewehr---------------------------------------------------------------

sound.Add({
	name = 			"Volk_fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/volk/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"Volk_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/volk/magin.wav"	
})

sound.Add({
	name = 			"Volk_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/volk/magout.wav"	
})

sound.Add({
	name = 			"Volk_Barrel",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/volk/bolt.wav"	
})

--mas38---------------------------------------------------------------

sound.Add({
	name = 			"Mas38_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/mas38/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"Mas38_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mas38/magout.wav"	
})

sound.Add({
	name = 			"Mas38_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mas38/magin.wav"	
})

sound.Add({
	name = 			"Mas38_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mas38/bolt.wav"	
})


--m1carbine---------------------------------------------------------------

sound.Add({
	name = 			"M1C_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/m1c/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"M1C_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1c/magout.wav"	
})

sound.Add({
	name = 			"M1C_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1c/magin.wav"	
})

sound.Add({
	name = 			"M1C_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1c/bolt.wav"	
})


sound.Add({
	name = 			"M1C_Ping",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1c/ping.wav"	
})

--Thompson---------------------------------------------------------------

sound.Add({
	name = 			"Thompson_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/thompson/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"Thompson_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/thompson/magout.wav"	
})

sound.Add({
	name = 			"Thompson_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/thompson/magin.wav"	
})

sound.Add({
	name = 			"Thompson_Magtap",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/thompson/maghit.wav"	
})

--M1 Garand---------------------------------------------------------------

sound.Add({
	name = 			"Garand_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/garand/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"Garand_Boltopen",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/garand/boltback.wav"	
})

sound.Add({
	name = 			"Garand_Clipin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/garand/clipin.wav"	
})

sound.Add({
	name = 			"Garand_Boltclose",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/garand/boltclose.wav"	
})


--avs36---------------------------------------------------------------

sound.Add({
	name = 			"AVS36_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/avs/fire.wav"	// <-- Sound Path
})


--1935---------------------------------------------------------------

sound.Add({
	name = 			"MP28_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/mp28/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"1935_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1935/magout.wav"	
})

sound.Add({
	name = 			"1935_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1935/magin.wav"	
})

sound.Add({
	name = 			"1935_Maghit",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m1935/maghit.wav"	
})

--MP28---------------------------------------------------------------

sound.Add({
	name = 			"MP28_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/mp28/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"MP28_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mp28/magout.wav"	
})

sound.Add({
	name = 			"MP28_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mp28/magin.wav"	
})

sound.Add({
	name = 			"MP28_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mp28/bolt.wav"	
})

--bar---------------------------------------------------------------

sound.Add({
	name = 			"Bar_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/bar/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"Bar_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/bar/magout.wav"	
})

sound.Add({
	name = 			"Bar_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/bar/magin.wav"	
})

sound.Add({
	name = 			"Bar_Charge",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/bar/charge.wav"	
})


--mg42---------------------------------------------------------------

sound.Add({
	name = 			"MG42_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/mg42/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"MG42_Open",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mg42/open.wav"	
})

sound.Add({
	name = 			"MG42_Close",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mg42/close.wav"	
})

sound.Add({
	name = 			"MG42_Beltin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mg42/beltin.wav"	
})


sound.Add({
	name = 			"MG42_Beltout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mg42/beltout.wav"	
})


sound.Add({
	name = 			"MG42_Charge",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mg42/charge.wav"	
})

--kar97k---------------------------------------------------------------

sound.Add({
	name = 			"kar98_single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1,
	sound = 			"weapons/kar98/fire.wav"	// <-- Sound Path
})

--stg44---------------------------------------------------------------

sound.Add({
	name = 			"STG44_Single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/stg44/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"STG44_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/stg44/magout.wav"	
})

sound.Add({
	name = 			"STG44_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/stg44/magin.wav"	
})

sound.Add({
	name = 			"STG44_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/stg44/bolt.wav"	
})

--greasegun---------------------------------------------------------------

sound.Add({
	name = 			"Greasegun_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/greasegun/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"Greasegun.Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/greasegun/magout.wav"	
})

sound.Add({
	name = 			"Greasegun.Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/greasegun/magin.wav"	
})

sound.Add({
	name = 			"Greasegun.Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/greasegun/bolt.wav"	
})

--m1911---------------------------------------------------------------

sound.Add({
	name = 			"Greasegun_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/M1911/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"M1911_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/M1911/magout.wav"	
})

sound.Add({
	name = 			"M1911_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/M1911/magin.wav"	
})

sound.Add({
	name = 			"M1911_Slide",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/M1911/slideforward.wav"	
})

--m30---------------------------------------------------------------

sound.Add({
	name = 			"M30_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/m30/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"m30_openE",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m30/openE.wav"	
})

sound.Add({
	name = 			"m30_openF",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m30/openF.wav"	
})

sound.Add({
	name = 			"m30_shellsinE",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m30/shellinE.wav"	
})

sound.Add({
	name = 			"m30_shellsinF",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m30/shellinF.wav"	
})


sound.Add({
	name = 			"m30_close",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m30/close.wav"	
})

--luger---------------------------------------------------------------

sound.Add({
	name = 			"Luger_Fire",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/luger/fire.wav"	// <-- Sound Path
})

sound.Add({
	name = 			"Luger_Magout",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/luger/magout.wav"	
})

sound.Add({
	name = 			"Luger_Magin",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/luger/magin.wav"	
})

sound.Add({
	name = 			"Luger_Bolt",			
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/luger/bolt.wav"	
})