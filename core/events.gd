extends Node

enum LOCATIONS {START, GAME, SHOP}

signal location_changed(location: LOCATIONS)
signal game_over
signal points_changed(points: int)
signal apples_changed(apples: int)
signal knives_changed(knives: int)
signal stage_changed(stage: Stage)
signal active_knife_changed(knife_index: int)
