
execute if entity @s[tag=reset_unique] run scoreboard players operation @s unique = unique_current unique

execute if entity @s[tag=reset_unique] run scoreboard players add unique_current unique 1

execute if entity @s[tag=reset_unique] at @s at @a[distance=1..] if score @p[distance=0,limit=1] unique = @s unique run tag @s add duplicate_unique

execute if entity @s[tag=reset_unique] if score unique_current unique > unique_max unique run scoreboard players set unique_current unique 2

#;join_team
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=2},team=!helper,team=!builder] run team join player_2
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=2}] run scoreboard players set @s teleport_unique 2
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=3},team=!helper,team=!builder] run team join player_3
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=3}] run scoreboard players set @s teleport_unique 3
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=4},team=!helper,team=!builder] run team join player_4
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=4}] run scoreboard players set @s teleport_unique 4
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=5},team=!helper,team=!builder] run team join player_5
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=5}] run scoreboard players set @s teleport_unique 5
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=6},team=!helper,team=!builder] run team join player_6
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=6}] run scoreboard players set @s teleport_unique 6
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=7},team=!helper,team=!builder] run team join player_7
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=7}] run scoreboard players set @s teleport_unique 7
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=8},team=!helper,team=!builder] run team join player_8
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=8}] run scoreboard players set @s teleport_unique 8
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=9},team=!helper,team=!builder] run team join player_9
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=9}] run scoreboard players set @s teleport_unique 9
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=10},team=!helper,team=!builder] run team join player_10
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=10}] run scoreboard players set @s teleport_unique 10
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=11},team=!helper,team=!builder] run team join player_11
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=11}] run scoreboard players set @s teleport_unique 11
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=12},team=!helper,team=!builder] run team join player_12
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=12}] run scoreboard players set @s teleport_unique 12
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=13},team=!helper,team=!builder] run team join player_13
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=13}] run scoreboard players set @s teleport_unique 13
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=14},team=!helper,team=!builder] run team join player_14
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=14}] run scoreboard players set @s teleport_unique 14
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=15},team=!helper,team=!builder] run team join player_15
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=15}] run scoreboard players set @s teleport_unique 15
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=16},team=!helper,team=!builder] run team join player_16
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=16}] run scoreboard players set @s teleport_unique 16
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=17},team=!helper,team=!builder] run team join player_17
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=17}] run scoreboard players set @s teleport_unique 17
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=18},team=!helper,team=!builder] run team join player_18
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=18}] run scoreboard players set @s teleport_unique 18
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=19},team=!helper,team=!builder] run team join player_19
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=19}] run scoreboard players set @s teleport_unique 19
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=20},team=!helper,team=!builder] run team join player_20
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=20}] run scoreboard players set @s teleport_unique 20
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=21},team=!helper,team=!builder] run team join player_21
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=21}] run scoreboard players set @s teleport_unique 21
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=22},team=!helper,team=!builder] run team join player_22
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=22}] run scoreboard players set @s teleport_unique 22
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=23},team=!helper,team=!builder] run team join player_23
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=23}] run scoreboard players set @s teleport_unique 23
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=24},team=!helper,team=!builder] run team join player_24
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=24}] run scoreboard players set @s teleport_unique 24
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=25},team=!helper,team=!builder] run team join player_25
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=25}] run scoreboard players set @s teleport_unique 25
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=26},team=!helper,team=!builder] run team join player_26
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=26}] run scoreboard players set @s teleport_unique 26
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=27},team=!helper,team=!builder] run team join player_27
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=27}] run scoreboard players set @s teleport_unique 27
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=28},team=!helper,team=!builder] run team join player_28
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=28}] run scoreboard players set @s teleport_unique 28
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=29},team=!helper,team=!builder] run team join player_29
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=29}] run scoreboard players set @s teleport_unique 29
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=30},team=!helper,team=!builder] run team join player_30
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=30}] run scoreboard players set @s teleport_unique 30
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=31},team=!helper,team=!builder] run team join player_31
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=31}] run scoreboard players set @s teleport_unique 31
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=32},team=!helper,team=!builder] run team join player_32
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=32}] run scoreboard players set @s teleport_unique 32
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=33},team=!helper,team=!builder] run team join player_33
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=33}] run scoreboard players set @s teleport_unique 33
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=34},team=!helper,team=!builder] run team join player_34
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=34}] run scoreboard players set @s teleport_unique 34
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=35},team=!helper,team=!builder] run team join player_35
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=35}] run scoreboard players set @s teleport_unique 35
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=36},team=!helper,team=!builder] run team join player_36
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=36}] run scoreboard players set @s teleport_unique 36
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=37},team=!helper,team=!builder] run team join player_37
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=37}] run scoreboard players set @s teleport_unique 37
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=38},team=!helper,team=!builder] run team join player_38
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=38}] run scoreboard players set @s teleport_unique 38
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=39},team=!helper,team=!builder] run team join player_39
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=39}] run scoreboard players set @s teleport_unique 39
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=40},team=!helper,team=!builder] run team join player_40
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=40}] run scoreboard players set @s teleport_unique 40
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=41},team=!helper,team=!builder] run team join player_41
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=41}] run scoreboard players set @s teleport_unique 41
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=42},team=!helper,team=!builder] run team join player_42
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=42}] run scoreboard players set @s teleport_unique 42
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=43},team=!helper,team=!builder] run team join player_43
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=43}] run scoreboard players set @s teleport_unique 43
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=44},team=!helper,team=!builder] run team join player_44
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=44}] run scoreboard players set @s teleport_unique 44
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=45},team=!helper,team=!builder] run team join player_45
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=45}] run scoreboard players set @s teleport_unique 45
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=46},team=!helper,team=!builder] run team join player_46
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=46}] run scoreboard players set @s teleport_unique 46
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=47},team=!helper,team=!builder] run team join player_47
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=47}] run scoreboard players set @s teleport_unique 47
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=48},team=!helper,team=!builder] run team join player_48
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=48}] run scoreboard players set @s teleport_unique 48
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=49},team=!helper,team=!builder] run team join player_49
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=49}] run scoreboard players set @s teleport_unique 49
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=50},team=!helper,team=!builder] run team join player_50
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=50}] run scoreboard players set @s teleport_unique 50
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=51},team=!helper,team=!builder] run team join player_51
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=51}] run scoreboard players set @s teleport_unique 51
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=52},team=!helper,team=!builder] run team join player_52
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=52}] run scoreboard players set @s teleport_unique 52
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=53},team=!helper,team=!builder] run team join player_53
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=53}] run scoreboard players set @s teleport_unique 53
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=54},team=!helper,team=!builder] run team join player_54
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=54}] run scoreboard players set @s teleport_unique 54
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=55},team=!helper,team=!builder] run team join player_55
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=55}] run scoreboard players set @s teleport_unique 55
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=56},team=!helper,team=!builder] run team join player_56
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=56}] run scoreboard players set @s teleport_unique 56
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=57},team=!helper,team=!builder] run team join player_57
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=57}] run scoreboard players set @s teleport_unique 57
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=58},team=!helper,team=!builder] run team join player_58
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=58}] run scoreboard players set @s teleport_unique 58
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=59},team=!helper,team=!builder] run team join player_59
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=59}] run scoreboard players set @s teleport_unique 59
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=60},team=!helper,team=!builder] run team join player_60
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=60}] run scoreboard players set @s teleport_unique 60
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=61},team=!helper,team=!builder] run team join player_61
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=61}] run scoreboard players set @s teleport_unique 61
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=62},team=!helper,team=!builder] run team join player_62
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=62}] run scoreboard players set @s teleport_unique 62
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=63},team=!helper,team=!builder] run team join player_63
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=63}] run scoreboard players set @s teleport_unique 63
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=64},team=!helper,team=!builder] run team join player_64
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=64}] run scoreboard players set @s teleport_unique 64
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=65},team=!helper,team=!builder] run team join player_65
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=65}] run scoreboard players set @s teleport_unique 65
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=66},team=!helper,team=!builder] run team join player_66
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=66}] run scoreboard players set @s teleport_unique 66
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=67},team=!helper,team=!builder] run team join player_67
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=67}] run scoreboard players set @s teleport_unique 67
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=68},team=!helper,team=!builder] run team join player_68
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=68}] run scoreboard players set @s teleport_unique 68
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=69},team=!helper,team=!builder] run team join player_69
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=69}] run scoreboard players set @s teleport_unique 69
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=70},team=!helper,team=!builder] run team join player_70
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=70}] run scoreboard players set @s teleport_unique 70
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=71},team=!helper,team=!builder] run team join player_71
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=71}] run scoreboard players set @s teleport_unique 71
execute if entity @s[tag=reset_unique,tag=!duplicate_unique] run tag @s remove reset_unique

execute if entity @s[tag=reset_unique,tag=duplicate_unique] run tag @s remove duplicate_unique
