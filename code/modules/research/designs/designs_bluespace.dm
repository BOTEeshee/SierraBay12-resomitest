/datum/design/item/bluespace
	category = list("Misc")

/datum/design/item/bluespace/gps
	name = "triangulating device"
	desc = "Triangulates approximate co-ordinates using a nearby satellite network."
	id = "gps"
	req_tech = list(TECH_MATERIAL = 2, TECH_DATA = 2, TECH_BLUESPACE = 2)
	materials = list(MATERIAL_ALUMINIUM = 250, MATERIAL_STEEL = 250, MATERIAL_GLASS = 50)
	build_path = /obj/item/device/gps
	sort_string = "VADAB"

/datum/design/item/bluespace/beacon_locator
	name = "beacon tracking pinpointer"
	desc = "Used to scan and locate signals on a particular frequency."
	id = "beacon_locator"
	req_tech = list(TECH_MAGNET = 3, TECH_ENGINEERING = 2, TECH_BLUESPACE = 3)
	materials = list(MATERIAL_ALUMINIUM = 1000, MATERIAL_GLASS = 500)
	build_path = /obj/item/pinpointer/radio
	sort_string = "VADAC"

/datum/design/item/bluespace/ano_scanner
	name = "Alden-Saraspova counter"
	id = "ano_scanner"
	desc = "Aids in triangulation of exotic particles."
	req_tech = list(TECH_BLUESPACE = 3, TECH_MAGNET = 3)
	materials = list(MATERIAL_STEEL = 5000, MATERIAL_ALUMINIUM = 5000, MATERIAL_GLASS = 5000)
	build_path = /obj/item/device/ano_scanner
	sort_string = "VAEAA"

/datum/design/item/bluespace/bag_holding
	name = "bag of holding"
	desc = "Using localized pockets of bluespace this bag prototype offers incredible storage capacity with the contents weighting nothing. It's a shame the bag itself is pretty heavy."
	id = "bag_holding"
	req_tech = list(TECH_BLUESPACE = 4, TECH_MATERIAL = 6)
	materials = list(MATERIAL_GOLD = 3000, MATERIAL_DIAMOND = 1500, MATERIAL_URANIUM = 250, MATERIAL_PLASTIC = 250)
	build_path = /obj/item/storage/backpack/holding
	sort_string = "VAFAA"

// SIERRA ADD
/datum/design/item/telesci/gps
	name = "Telescience GPS"
	desc = "Required for calculations in the telescience field."
	category = list("Misc")
	id = "telesci-gps"
	req_tech = list(TECH_ENGINEERING = 3, TECH_BLUESPACE = 4)
	materials = list(MATERIAL_STEEL = 300, MATERIAL_PLASTIC = 250)
	build_path = /obj/item/device/telesci/gps
	sort_string = "VACAA"
// SIERRA ADD-END
