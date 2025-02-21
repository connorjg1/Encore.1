//shield
/datum/advclass/cleric
	name = "Cleric"
	tutorial = "Clerics are wandering warriors of the Gods, an asset to any party."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	vampcompat = FALSE
	outfit = /datum/outfit/job/roguetown/adventurer/cleric
	category_tags = list(CTAG_ADVENTURER)

/datum/outfit/job/roguetown/adventurer/cleric
	allowed_patrons = ALL_PATRONS

/datum/outfit/job/roguetown/adventurer/cleric/pre_equip(mob/living/carbon/human/H)
	..()
	switch(H.patron?.type)
		if(/datum/patron/elemental/visires)
			neck = /obj/item/clothing/neck/roguetown/psicross/visires
		if(/datum/patron/elemental/akan)
			neck = /obj/item/clothing/neck/roguetown/psicross/akan
		if(/datum/patron/elemental/gani)
			neck = /obj/item/clothing/neck/roguetown/psicross/gani
		if(/datum/patron/elemental/mjallidhorn)
			neck = /obj/item/clothing/neck/roguetown/psicross/mjallidhorn
		if(/datum/patron/heretic/devil)
			H.cmode_music = 'sound/music/combat_cult.ogg'
			neck = /obj/item/roguekey/inhumen

	// CLASS ARCHETYPES
	H.adjust_blindness(-3)
	var/classes = list("Life Cleric","War Cleric", "Cloistered Devout")
	var/classchoice = input("Choose your archetypes", "Available archetypes") as anything in classes

	switch(classchoice)

		if("Life Cleric")
			H.set_blindness(0)
			to_chat(H, span_warning("You are a cleric of the life domain. Well versed in the arts of healing and magic."))
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 4, TRUE)
			H.change_stat("intelligence", 2)
			H.change_stat("perception", 1) // More intelligence and no speed penalty for Life Clerics.
			H.change_stat("strength", 1)
			H.change_stat("constitution", 2)
			H.change_stat("endurance", 2)
		if("War Cleric")
			H.set_blindness(0)
			to_chat(H, span_warning("You are a cleric of the war domain. Experienced in both the granting of life and the taking of it. Unfortunately your study of warcraft has weakened your divine abilities..."))
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/shields, 1, TRUE)
			H.change_stat("intelligence", 1)
			H.change_stat("strength", 2)
			H.change_stat("constitution", 2)
			H.change_stat("endurance", 2) // Stronger but less intelligent/quick compared to life clerics.
			H.change_stat("speed", -1)
		// HEARTHSTONE ADD: cloistered cleric subclass (lighter armored and equipped)
		if("Cloistered Devout")
			// Devout start without the typical cleric medium/heavy armor shtick and without much in the way of weapons or skills to use them.
			// They're better with miracles and regenerate devotion passively like the Priest does, however.
			H.set_blindness(0)
			to_chat(H, span_warning("You are a cloistered cleric, eschewing arms and armor for the weapon of word and greater connection to your chosen patron."))
			H.mind.adjust_skillrank(/datum/skill/magic/holy, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.change_stat("intelligence", 2)
			H.change_stat("strength", -1)
			H.change_stat("perception", 2)
			H.change_stat("speed", 1)
		// HEARTHSTONE ADDITION END

	armor = /obj/item/clothing/suit/roguetown/armor/plate
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
	pants = /obj/item/clothing/under/roguetown/trou/leather
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/rogueweapon/mace
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/rogueweapon/shield/wood
	backpack_contents = list(/obj/item/rogueweapon/huntingknife)
	// everything about this sucks - we should really make a subclass datum or something

	// HEARTHSTONE ADD: cloistered devout custom outfits
	if (classchoice == "Cloistered Devout")
		// do the generic stuff first then replace it w/ patron specific things... if it exists
		// for reference, cloistered devouts are lightly armored/unarmored but get patron-specific stuff (if applicable) and a devo regen
		head = /obj/item/clothing/head/roguetown/roguehood/black
		armor = /obj/item/clothing/suit/roguetown/shirt/robe
		shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
		wrists = null
		beltr = null
		backr = /obj/item/rogueweapon/woodstaff
		pants = /obj/item/clothing/under/roguetown/tights
		shoes = /obj/item/clothing/shoes/roguetown/boots
		// apply patron-specific outfit alterations
		switch(H.patron?.type)
			if(/datum/patron/elemental/visires)
				head = /obj/item/clothing/head/roguetown/roguehood
				armor = /obj/item/clothing/suit/roguetown/shirt/robe/visires
				beltr = /obj/item/flashlight/flare/torch/lantern // you are the lightbringer
			if(/datum/patron/elemental/akan)
				head =  /obj/item/clothing/head/roguetown/akanhood
				armor = /obj/item/clothing/suit/roguetown/shirt/robe/akan
				pants = /obj/item/clothing/under/roguetown/tights/black
				belt = /obj/item/storage/belt/rogue/leather/black
			if(/datum/patron/elemental/mjallidhorn)
				head = /obj/item/clothing/head/roguetown/mjallidhornhood
				armor = /obj/item/clothing/suit/roguetown/shirt/robe/mjallidhorn
				pants = /obj/item/clothing/under/roguetown/trou/leather/mourning
			if(/datum/patron/elemental/gani)
				head = /obj/item/clothing/head/roguetown/ganimask
				armor = /obj/item/clothing/suit/roguetown/shirt/robe/gani
				pants = /obj/item/clothing/under/roguetown/loincloth
				belt = /obj/item/storage/belt/rogue/leather/rope
				shoes = /obj/item/clothing/shoes/roguetown/sandals
		var/datum/devotion/C = new /datum/devotion(H, H.patron)
		C.passive_devotion_gain += 0.25
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/lesser_heal) //All clerics get miracle
		C.grant_spells(H) // don't give churn as an extra spell to cloistered since they get their patron's full spell list (up to t3)
		START_PROCESSING(SSobj, C)
	else
// HEARTHSTONE ADDITION END
		ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
		var/datum/devotion/C = new /datum/devotion(H, H.patron)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/lesser_heal) //All clerics get miracle
		C.grant_spells(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
