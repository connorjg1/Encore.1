/turf/open/floor/onbite(mob/user)	
	if(isliving(user))		
		var/mob/living/L = user		
		if(L.stat != CONSCIOUS)
			return		
		if(iscarbon(user))
			var/mob/living/carbon/C = user
			if(!C.lying)
				return	
			if(C.is_mouth_covered())
				return
		return
	..()
