
execute if entity @p[tag=operator] as @a[tag=operator] unless entity @s[scores={clone_inventory=-2147483648..2147483647}] run scoreboard players enable @s clone_inventory

execute if entity @p[team=operator,scores={clone_inventory=1}] as @a[team=operator,scores={clone_inventory=1}] run tellraw @s [{"selector":"@p[scores={teleport_unique=2}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=2}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=2}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=3}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=3}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=3}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=4}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=4}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=4}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=5}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=5}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=5}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=6}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=6}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=6}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=7}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 7"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=7}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=7}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=8}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 8"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=8}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=8}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=9}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 9"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=9}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=9}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=10}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 10"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=10}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=10}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=11}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=11}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=11}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=12}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 12"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=12}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=12}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=13}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 13"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=13}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=13}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=14}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 14"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=14}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=14}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=15}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 15"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=15}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=15}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=16}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 16"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=16}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=16}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=17}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 17"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=17}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=17}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=18}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 18"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=18}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=18}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=19}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 19"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=19}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=19}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=20}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 20"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=20}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=20}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=21}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 21"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=21}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=21}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=22}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 22"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=22}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=22}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=23}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 23"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=23}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=23}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=24}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 24"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=24}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=24}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=25}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 25"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=25}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=25}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=26}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 26"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=26}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=26}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=27}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 27"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=27}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=27}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=28}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 28"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=28}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=28}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=29}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 29"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=29}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=29}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=30}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 30"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=30}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=30}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=31}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 31"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=31}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=31}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=32}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 32"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=32}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=32}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=33}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 33"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=33}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=33}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=34}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 34"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=34}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=34}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=35}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 35"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=35}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=35}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=36}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 36"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=36}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=36}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=37}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 37"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=37}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=37}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=38}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 38"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=38}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=38}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=39}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 39"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=39}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=39}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=40}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 40"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=40}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=40}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=41}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 41"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=41}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=41}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=42}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 42"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=42}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=42}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=43}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 43"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=43}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=43}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=44}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 44"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=44}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=44}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=45}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 45"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=45}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=45}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=46}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 46"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=46}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=46}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=47}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 47"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=47}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=47}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=48}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 48"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=48}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=48}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=49}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 49"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=49}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=49}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=50}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 50"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=50}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=50}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=51}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 51"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=51}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=51}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=52}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 52"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=52}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=52}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=53}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 53"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=53}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=53}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=54}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 54"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=54}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=54}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=55}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 55"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=55}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=55}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=56}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 56"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=56}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=56}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=57}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 57"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=57}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=57}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=58}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 58"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=58}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=58}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=59}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 59"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=59}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=59}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=60}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 60"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=60}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=60}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=61}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 61"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=61}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=61}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=62}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 62"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=62}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=62}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=63}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 63"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=63}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=63}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=64}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 64"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=64}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=64}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=65}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 65"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=65}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=65}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=66}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 66"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=66}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=66}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=67}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 67"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=67}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=67}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=68}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 68"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=68}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=68}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=69}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 69"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=69}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=69}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=70}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 70"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=70}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=70}]","objective":"teleport_unique"}}]}},{"selector":"@p[scores={teleport_unique=71}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set 71"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=71}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=71}]","objective":"teleport_unique"}}]}}]

execute if entity @p[team=operator,scores={clone_inventory=2}] as @a[team=operator,scores={clone_inventory=2}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=2}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=3}] as @a[team=operator,scores={clone_inventory=3}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=3}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=4}] as @a[team=operator,scores={clone_inventory=4}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=4}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=5}] as @a[team=operator,scores={clone_inventory=5}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=5}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=6}] as @a[team=operator,scores={clone_inventory=6}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=6}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=7}] as @a[team=operator,scores={clone_inventory=7}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=7}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=8}] as @a[team=operator,scores={clone_inventory=8}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=8}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=9}] as @a[team=operator,scores={clone_inventory=9}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=9}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=10}] as @a[team=operator,scores={clone_inventory=10}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=10}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=11}] as @a[team=operator,scores={clone_inventory=11}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=11}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=12}] as @a[team=operator,scores={clone_inventory=12}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=12}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=13}] as @a[team=operator,scores={clone_inventory=13}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=13}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=14}] as @a[team=operator,scores={clone_inventory=14}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=14}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=15}] as @a[team=operator,scores={clone_inventory=15}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=15}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=16}] as @a[team=operator,scores={clone_inventory=16}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=16}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=17}] as @a[team=operator,scores={clone_inventory=17}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=17}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=18}] as @a[team=operator,scores={clone_inventory=18}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=18}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=19}] as @a[team=operator,scores={clone_inventory=19}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=19}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=20}] as @a[team=operator,scores={clone_inventory=20}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=20}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=21}] as @a[team=operator,scores={clone_inventory=21}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=21}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=22}] as @a[team=operator,scores={clone_inventory=22}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=22}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=23}] as @a[team=operator,scores={clone_inventory=23}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=23}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=24}] as @a[team=operator,scores={clone_inventory=24}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=24}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=25}] as @a[team=operator,scores={clone_inventory=25}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=25}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=26}] as @a[team=operator,scores={clone_inventory=26}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=26}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=27}] as @a[team=operator,scores={clone_inventory=27}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=27}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=28}] as @a[team=operator,scores={clone_inventory=28}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=28}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=29}] as @a[team=operator,scores={clone_inventory=29}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=29}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=30}] as @a[team=operator,scores={clone_inventory=30}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=30}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=31}] as @a[team=operator,scores={clone_inventory=31}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=31}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=32}] as @a[team=operator,scores={clone_inventory=32}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=32}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=33}] as @a[team=operator,scores={clone_inventory=33}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=33}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=34}] as @a[team=operator,scores={clone_inventory=34}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=34}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=35}] as @a[team=operator,scores={clone_inventory=35}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=35}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=36}] as @a[team=operator,scores={clone_inventory=36}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=36}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=37}] as @a[team=operator,scores={clone_inventory=37}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=37}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=38}] as @a[team=operator,scores={clone_inventory=38}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=38}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=39}] as @a[team=operator,scores={clone_inventory=39}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=39}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=40}] as @a[team=operator,scores={clone_inventory=40}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=40}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=41}] as @a[team=operator,scores={clone_inventory=41}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=41}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=42}] as @a[team=operator,scores={clone_inventory=42}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=42}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=43}] as @a[team=operator,scores={clone_inventory=43}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=43}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=44}] as @a[team=operator,scores={clone_inventory=44}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=44}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=45}] as @a[team=operator,scores={clone_inventory=45}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=45}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=46}] as @a[team=operator,scores={clone_inventory=46}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=46}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=47}] as @a[team=operator,scores={clone_inventory=47}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=47}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=48}] as @a[team=operator,scores={clone_inventory=48}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=48}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=49}] as @a[team=operator,scores={clone_inventory=49}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=49}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=50}] as @a[team=operator,scores={clone_inventory=50}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=50}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=51}] as @a[team=operator,scores={clone_inventory=51}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=51}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=52}] as @a[team=operator,scores={clone_inventory=52}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=52}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=53}] as @a[team=operator,scores={clone_inventory=53}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=53}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=54}] as @a[team=operator,scores={clone_inventory=54}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=54}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=55}] as @a[team=operator,scores={clone_inventory=55}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=55}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=56}] as @a[team=operator,scores={clone_inventory=56}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=56}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=57}] as @a[team=operator,scores={clone_inventory=57}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=57}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=58}] as @a[team=operator,scores={clone_inventory=58}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=58}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=59}] as @a[team=operator,scores={clone_inventory=59}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=59}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=60}] as @a[team=operator,scores={clone_inventory=60}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=60}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=61}] as @a[team=operator,scores={clone_inventory=61}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=61}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=62}] as @a[team=operator,scores={clone_inventory=62}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=62}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=63}] as @a[team=operator,scores={clone_inventory=63}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=63}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=64}] as @a[team=operator,scores={clone_inventory=64}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=64}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=65}] as @a[team=operator,scores={clone_inventory=65}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=65}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=66}] as @a[team=operator,scores={clone_inventory=66}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=66}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=67}] as @a[team=operator,scores={clone_inventory=67}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=67}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=68}] as @a[team=operator,scores={clone_inventory=68}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=68}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=69}] as @a[team=operator,scores={clone_inventory=69}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=69}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=70}] as @a[team=operator,scores={clone_inventory=70}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=70}] Inventory
execute if entity @p[team=operator,scores={clone_inventory=71}] as @a[team=operator,scores={clone_inventory=71}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores{teleport_unique=71}] Inventory

execute if entity @p[tag=operator,scores={clone_inventory=1..}] as @a[tag=operator,scores={clone_inventory=1..}] run scoreboard players reset @s clone_inventory
