// Submap shuttles.
// Trichopterax - Shuttle One, Port Side
// Lepidopterax - Shuttle Two, Starboard Side
/obj/overmap/visitable/ship/landable/ascent_inf
	name = "Trichopterax"
	desc = "Signature indicates a small shuttle of unknown design."
	color = COLOR_PURPLE
	shuttle = "Trichopterax"
	moving_state = "ship_moving"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL
	initial_restricted_waypoints = list(
		"Trichopterax Docked" = list("nav_hangar_ascent_inf_one"),
		"NSV Sierra Docking Port" = list("nav_hangar_ascent_inf_sierra")
	)

/obj/overmap/visitable/ship/landable/ascent_inf/two
	name = "Lepidopterax"
	shuttle = "Lepidopterax"
	fore_dir = NORTH

/obj/machinery/computer/shuttle_control/explore/ascent_inf
	name = "shuttle control console"
	shuttle_tag = "Trichopterax"
	icon_state = "ascent"
	icon_keyboard = "ascent_key"
	icon_screen = "ascent_screen"
	req_access = list(access_ascent)

/obj/machinery/computer/shuttle_control/explore/ascent_inf/two
	name = "shuttle control console"
	shuttle_tag = "Lepidopterax"

/obj/shuttle_landmark/ascent_seedship_inf/start
	name = "Trichopterax Docked"
	landmark_tag = "nav_hangar_ascent_inf_one"
	docking_controller = "ascent_inf_port_dock"
	base_area = /area/ship/ascent_inf/wing_port
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/shuttle_landmark/ascent_seedship_inf/start/two
	name = "Lepidopterax Docked"
	landmark_tag = "nav_hangar_ascent_inf_two"
	docking_controller = "ascent_inf_starboard_dock"
	base_area = /area/ship/ascent_inf/wing_starboard

/obj/shuttle_landmark/ascent_seedship_inf/sierra
	name = "NSV Sierra Docking Port"
	landmark_tag = "nav_hangar_ascent_inf_sierra"
	docking_controller = "rescue_shuttle_dock_airlock"

/obj/shuttle_landmark/ascent_seedship_inf/sierra/two
	name = "NSV Sierra Docking Port"
	landmark_tag = "nav_hangar_ascent_inf_sierra_two"
	docking_controller = "merchant_shuttle_station"

/datum/shuttle/autodock/overmap/ascent_inf
	name = "Trichopterax"
	warmup_time = 5
	current_location = "nav_hangar_ascent_inf_one"
	range = 2
	dock_target = "ascent_inf_port_shuttle_dock"
	shuttle_area = /area/ship/ascent_inf/shuttle_port
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_BASIC
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/ascent

/datum/shuttle/autodock/overmap/ascent_inf/two
	name = "Lepidopterax"
	warmup_time = 5
	current_location = "nav_hangar_ascent_inf_two"
	range = 2
	dock_target = "ascent_inf_starboard"
	shuttle_area = /area/ship/ascent_inf/shuttle_starboard
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_UNSKILLED
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/ascent
