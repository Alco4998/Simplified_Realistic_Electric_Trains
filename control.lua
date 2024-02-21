--==============================================================================

-- Tick handler

script.on_init(
	function(e)
		global.locomotives = {}
	end
)

script.on_event(defines.events.on_tick,
	require("logic.events.on_tick")
)

script.on_event({
		defines.events.on_built_entity,
		defines.events.on_robot_built_entity,
		defines.events.script_raised_built,
		defines.events.script_raised_qrevive
	},
	require("Logic.events.on_build")
)

commands.add_command("print_loco_count",
	"Prints number of Locomotives registered",
	function()
				local count = 0
		for _, _ in pairs(global.locomotives) do
			count = count + 1
					end
game.print(string.format("Total Trains: %d", count))
	end
)
