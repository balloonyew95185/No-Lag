# Description: Displays the datapack menu
# Called from tag: 2mal3:nola/menu
# Datapack by 2mal3

# Disables command fedback for a short time, so that no disturbing message is displayed
gamerule sendCommandFeedback false
schedule function 2mal3:nola/menu/send_command_feedback_true 1t


# Plays click sound
playsound minecraft:ui.button.click master @s


# Get variables
execute as @e at @s run function 2mal3:nola/ignore
execute as @e at @s run function 2mal3:nola/ignore_kill

function 2mal3:nola/get_variables


# Display menu
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s [{"text":"No Lag Datapack v2.0.1","bold":true,"color":"gold"},{"text":"\n------------------------\n","color":"gold"}]

tellraw @s [{"text":"Online Players: ","color":"gold"},{"score":{"name":"$nola.players","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"Entitys in the world: ","color":"gold"},{"score":{"name":"$nola.entitys","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"Frozen entitys: ","color":"gold"},{"score":{"name":"$nola.frozen_entitys","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"Unneeded entitys: ","color":"gold"},{"score":{"name":"$nola.unneeded_entitys","objective":"nola.data"},"color":"red"}]

tellraw @s {"text":""}

tellraw @s {"text":"Delete all unused entitys","color":"gold","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/manual_lag_clear"},"hoverEvent":{"action":"show_text","contents":"*click*"}}
tellraw @s {"text":"Configure the Datapack","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_config"},"hoverEvent":{"action":"show_text","value":"*click*"},"color":"gold"}
tellraw @s {"text":"Check for updates","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/2mal3/core/wiki/No-Lag-Update-Check-v2.0.1"},"hoverEvent":{"action":"show_text","contents":"*click*"}}

tellraw @s {"text":""}

tellraw @s {"text":"Uninstall the Datapack","color":"dark_red","clickEvent":{"action":"run_command","value":"/function #2mal3:nola/uninstall"},"hoverEvent":{"action":"show_text","contents":"*click*"}}