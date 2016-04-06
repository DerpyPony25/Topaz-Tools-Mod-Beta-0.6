minetest.register_node("topaz:topaz_ore", {
	description = "Topaz Ore",
	tiles = {"topaz_ore.png"},
	is_ground_content = true,
	paramtype="light",
	groups = {cracky=3},
})

minetest.register_craftitem("topaz:topaz_gem", {
	description = "Topaz",
	inventory_image = "topaz.png",
	paramtype="light",
	visual_scale = 1.0,
	tiles = {"topaz.png"},
	groups = {cracky=3},
})

--Tool
minetest.register_tool("topaz:pick_topaz", {
	description = "Topaz Pickaxe",
	inventory_image = "topaz_tool_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("topaz:shovel_topaz", {
	description = "Topaz Shovel",
	inventory_image = "topaz_tool_shovel.png",
	wield_image = "topaz_tool_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("topaz:sword_topaz", {
	description = "Topaz Sword",
	inventory_image = "topaz_tool_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	}
})

minetest.register_tool("topaz:axe_topaz", {
	description = "Topaz Axe",
	inventory_image = "topaz_tool_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

--Craft
minetest.register_craft({
	output = 'topaz:pick_topaz',
	recipe = {
		{'topaz:topaz_gem', 'topaz:topaz_gem', 'topaz:topaz_gem'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'topaz:axe_topaz',
	recipe = {
		{'topaz:topaz_gem', 'topaz:topaz_gem'},
		{'topaz:topaz_gem', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'topaz:sword_topaz',
	recipe = {
		{'topaz:topaz_gem'},
		{'topaz:topaz_gem'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'topaz:shovel_topaz',
	recipe = {
		{'topaz:topaz_gem'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "topaz:topaz_gem",
	recipe = "topaz:topaz_ore",
})

--Ore
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "topaz:topaz_block",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 8,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 64,
})

