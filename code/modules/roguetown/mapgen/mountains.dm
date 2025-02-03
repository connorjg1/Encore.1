
/obj/effect/landmark/mapGenerator/rogue/mountain
	mapGeneratorType = /datum/mapGenerator/mtn
	endTurfX = 255
	endTurfY = 255
	startTurfX = 1
	startTurfY = 1

/datum/mapGenerator/mtn
	modules = list(/datum/mapGeneratorModule/ambushing,/datum/mapGeneratorModule/mtn)

/datum/mapGeneratorModule/mtn
	clusterCheckFlags = CLUSTER_CHECK_DIFFERENT_ATOMS
	allowed_turfs = list(/turf/open/floor/rogue/dirt/road, /turf/open/floor/rogue/grassyel)
	spawnableAtoms = list(/obj/structure/flora/roguegrass/bush = 35,
						/obj/structure/flora/roguegrass = 26,
						/obj/structure/flora/roguegrass/pyroclasticflowers = 4,
						/obj/item/natural/stone = 25,
						/obj/item/natural/rock = 25,
						/obj/item/grown/log/tree/stick = 16,
						/obj/structure/flora/roguetree/stump/log = 3,
						/obj/structure/roguerock=35,
						/obj/structure/flora/roguetree/stump = 4,
						/obj/structure/closet/dirthole/closed/loot=3)
	allowed_areas = list(/area/rogue/outdoors/mountains,/area/rogue/outdoors/mountains/deception)
