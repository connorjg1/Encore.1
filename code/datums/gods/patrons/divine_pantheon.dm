/datum/patron/divine
	name = null
	associated_faith = /datum/faith/divine
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal

/datum/patron/divine/astrata//Change to new god, Visires
	name = "Visires"
	domain = "The Goddess of Fire and Wrath"
	desc = "The youngest of the Elemental Gods. A once-mortal given host to the Aspect of Fire and made divine. The worship of Visires represents the plea for passion, life and the will to live; just as much it does the destruction, the hunger and the chaos that it may impose."
	worshippers = "Conquerors, the wrathful, the pupils of the Sun's science"
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/revive
	confess_lines = list(
		"VISIRES SUNDERS!",
		"THE ASPECT OF FIRE HUNGERS!",
		"I SERVE THE STARS!",
	)

/datum/patron/divine/eora//Change to new god, favored of Visires
	name = "Visires' Favored"
	domain = "The demi-deities of Visires"
	desc = "Likened to the sins of plunderers in history, and kin to the crime of all greed. The worship of Visires' favored involves demi-deities which represent anything vaguely approximated with one's power or gluttony."
	worshippers = "Sellswords, slavers and the hungerers of excess"
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/bud
	t2 = /obj/effect/proc_holder/spell/invoked/eoracurse
	t3 = null
	confess_lines = list(
		"THE FLAME INSIDE STILL BURNS!",
		"THE SANDS IN MY MIND, THE FLAMES FLICKER!",
		"A CAULDRON IN THE WASTES!",
	)

/datum/patron/divine/noc//Change to new god, Akan
	name = "Akan"
	domain = "God of Air, the Sky and Heaven"
	desc = "Akan, the Elder, embodies the fundamental element of air. They are an ancient spirit made divine as they would personify the very essence of the wistful, everlasting and free Aspect of the Sky."
	worshippers = "The pilgrims, the nomads and the forever-free"
	mob_traits = list(TRAIT_NIGHT_OWL, TRAIT_NOCSIGHT)
	t1 = /obj/effect/proc_holder/spell/invoked/blindness/miracle
	t2 = /obj/effect/proc_holder/spell/invoked/invisibility/miracle
	confess_lines = list(
		"AKAN HEARS, BUT DOES NOT SEE!",
		"I SEE WHAT THE BLIND MAN SEES!",
		"A CLOUD ABOUT THE ERRANT SOUL!",
	)

/datum/patron/divine/pestra//Change to new god, Favored of Akan
	name = "Akan's Favored"
	domain = "The demi-deities of Akan"
	desc = "The many vying deities of Akan's great court. They seek Akan's attention, startling many in their boundless innovation and luxurious attempts to impress. The worship of Akan's court involves those associated with the Earthly sciences, from medicine men to the legendary academics of the East."
	worshippers = "Physicians, alchemists, grand scholars, and mighty mages"
	mob_traits = list(TRAIT_EMPATH, TRAIT_ROT_EATER)
	t0 = /obj/effect/proc_holder/spell/invoked/diagnose
	t1 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/attach_bodypart
	t4 = /obj/effect/proc_holder/spell/invoked/cure_rot
	confess_lines = list(
		"PESTRA SOOTHES ALL ILLS!",
		"DECAY IS A CONTINUATION OF LIFE!",
		"MY AFFLICTION IS MY TESTAMENT!",
	)

/datum/patron/divine/xylix//Change to new god, Iliope
	name = "Iliope the Fool"
	domain = "The demi-deity of trickery, dreams and inspiration"
	desc = "A demi-deity of Akan's court, both famous and infamous for their sway over the forces of luck. Iliope is known for the inspiration of many a bards lyric. Speaks through their gift to man; the Tarot deck."
	worshippers = "Gamblers, Bards, Artists, and the Silver-Tongued"
	mob_traits = list(TRAIT_XYLIX)
	confess_lines = list(
		"VISIRES IS MY LIGHT!",
		"AKAN FLIES FREE AND TOO FAR FROM ME!",
		"GANI PROVIDES!",
		"GOLER KANH IS MY MUSE!",
		"MJALLIDHORN IS MY TERROR!",
	)

/datum/patron/divine/dendor//Change to new god, Gani
	name = "Gani"
	domain = "Mother Goddess of the Earth and Soil"
	desc = "Gani, the Mother, embodies the fundamental element of earth. They are an ancient spirit made divine as they would personify the very essence of the stern, immovable and protective Aspect of Stone. Gani is the world beneath the feet of all. She is the only God of the Four whose omnipresence extends beyond her domain."
	worshippers = "All Earthly things, the farms, the huntsmen and matriarchs"
	mob_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	t1 = /obj/effect/proc_holder/spell/targeted/blesscrop
	t2 = /obj/effect/proc_holder/spell/targeted/beasttame
	t3 = /obj/effect/proc_holder/spell/targeted/conjure_glowshroom
	t4 = /obj/effect/proc_holder/spell/self/howl/call_of_the_moon
	confess_lines = list(
		"GOLDEN GREENING!",
		"WE SPROUT ANEW!",
		"BY LEAF AND LIMB!",
	)

/datum/patron/divine/abyssor//Change to new god, Favored of Gani
	name = "Gani's Favored"
	domain = "The demi-deities of Gani"
	desc = "Of the Elementals, the court of Gani is by far the most encompassing. Adversely to Akan, her demi-deities hold vestige in most things to involve creation. As the land is worked, and as the more complex trades demand more attention from heavenly beings, Gani’s devotees grow. These extend from the highly-skilled irreverent smiths of the hardest steel, to the simplest of young farm hands making pittance for worth."
	worshippers = "Stone workers, woodmen and the mundane laborers of the land"
	mob_traits = list(TRAIT_ABYSSOR_SWIM)
	confess_lines = list(
		"GANI SEES ALL WHICH IS LIVELY!",
		"THE FERTILE LAND BLOOMS ANEW!",
		"VERDANT POWER FLOWS!",
	)

/datum/patron/divine/malum//Change to new god, Goler Kanh
	name = "Goler Kanh"
	domain = "Demigod of the Hand, Purveyor of Stone"
	desc = "A servant deity to Gani. The creator of technology, and he who first harnessed land and rock to serve mortal will."
	worshippers = "Smiths, engineers and tinkerers"
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	confess_lines = list(
		"IN MY HAND IS ALL MORTAL POWER!",
		"WITH GANI'S EDGE I STRIKE!",
		"I AM AN INSTRUMENT OF CREATION!",
	)

/datum/patron/divine/ravox//Change to new god, Mjallidhorn
	name = "Mjallidhorn"
	domain = "The Warrior, God of Ice"
	desc = "Mjhallidhorn, the Warrior, embodies the fundamental element of ice. They are a once-mortal made divine as they would personify the very essence of the ruthless, brutal and materialistic Aspect of Frost. Mjallidhorn is an Elemental locked in battle in the far north against the hordes of Hell, perhaps forevermore."
	worshippers = "Warriors, sellswords, justiciers and freedom fighters"
	confess_lines = list(
		"THE NORTH'S MADNESS!",
		"BLOOD IN THE FIRMAMENT! BLOOD IN ALL THINGS!",
		"THE WHITE DEATH ROARS!",
	)

/datum/patron/divine/necra//Change to new god, Favored of Mjallidhorn
	name = "Mjallidhorn's Favored"
	domain = "The demi-deities of Mjallidhorn"
	desc = "The armies of Mjallidhorn, thought to shepherd lost souls which wander the Earth and ferry those worthy into Heaven before they sink into the depths of Hell."
	worshippers = "The dead, mourners and gravekeepers"
	mob_traits = list(TRAIT_SOUL_EXAMINE)
	t1 = /obj/effect/proc_holder/spell/invoked/avert
	t2 = /obj/effect/proc_holder/spell/targeted/abrogation
	t3 = /obj/effect/proc_holder/spell/targeted/soulspeak
	confess_lines = list(
		"THE HORN SOUNDS! THE NORTH CALLS!",
		"THE SKY IS BRIGHTEST ALWAYS IN DARKEST NIGHT!",
		"I FEAR NOT DEATH, THE FOREVER WAR AWAITS ME!",
	)


