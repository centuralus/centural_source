scoreboard objectives add temporary_x_sign dummy "X Coordinate Sign (- +)"
scoreboard objectives add temporary_x_ones dummy "X Coordinate Ones Place"
scoreboard objectives add temporary_x_tens dummy "X Coordinate Tens Place"
scoreboard objectives add temporary_x_hund dummy "X Coordinate Hundreds Place"
scoreboard objectives add temporary_x_thou dummy "X Coordinate Thousands Place"
scoreboard objectives add temporary_x_ttho dummy "X Coordinate Ten Thousands Place"

scoreboard objectives add temporary_z_sign dummy "Z Coordinate Sign (- +)"
scoreboard objectives add temporary_space dummy "Match Space"
data modify storage core:sign negative set value -
data modify storage core:sign space set value " "
data modify storage core:sign x_found set value 0

data modify storage core:sign 0 set value "0"
data modify storage core:sign 1 set value "1"
data modify storage core:sign 2 set value "2"
data modify storage core:sign 3 set value "3"
data modify storage core:sign 4 set value "4"
data modify storage core:sign 5 set value "5"
data modify storage core:sign 6 set value "6"
data modify storage core:sign 7 set value "7"
data modify storage core:sign 8 set value "8"
data modify storage core:sign 9 set value "9"


#first position determines if postive or negative (- means its negative, anything else means its postive IE 0-9)
execute store success score buried_treasure temporary_x_sign run data modify storage core:sign negative set from storage string:io out[0]
execute if score buried_treasure temporary_x_sign matches 1 run say "The X Coordinate is Positive"
execute if score buried_treasure temporary_x_sign matches 0 run say "The X Coordinate is Negative"
#reset negative shifter
data modify storage core:sign negative set value -

#X is Postive Ones Place
data modify storage core:sign space set value " "
execute store success score out1 temporary_space run data modify storage core:sign space set from storage string:io out[1]
execute if score out1 temporary_space matches 0 run tellraw @a[team=explorer] ["Space Found out[1]: ",{"nbt":"out[1]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 run tellraw @a[team=explorer] ["Number fount at out[1]: ",{"nbt":"out[1]","storage":"string:io","interpret":false}]

#X is Postive Tens Place or Negtive Ones Place
execute if score out1 temporary_space matches 1 run data modify storage core:sign space set value " "
execute if score out1 temporary_space matches 1 store success score out2 temporary_space run data modify storage core:sign space set from storage string:io out[2]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 0 run tellraw @a[team=explorer] ["Space Found out[2]: ",{"nbt":"out[2]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 0 if score buried_treasure temporary_x_sign matches 1 run tellraw @a[team=explorer] ["X: digit",{"nbt":"out[0]","storage":"string:io","interpret":false},{"nbt":"out[1]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 0 if score buried_treasure temporary_x_sign matches 0 run tellraw @a[team=explorer] ["X: digit",{"nbt":"out[0]","storage":"string:io","interpret":false},{"nbt":"out[1]","storage":"string:io","interpret":false}]

execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 run tellraw @a[team=explorer] ["Searchin for tilda.. Number fount at out[2]: ",{"nbt":"out[2]","storage":"string:io","interpret":false}]


#X is Postive Hundreds Place or Negative Tens Place
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 run data modify storage core:sign space set value " "
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 store success score out3 temporary_space run data modify storage core:sign space set from storage string:io out[3]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 0 run tellraw @a[team=explorer] ["Space Found out[3]: ",{"nbt":"out[3]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 0 if score buried_treasure temporary_x_sign matches 1 run tellraw @a[team=explorer] ["X: digit",{"nbt":"out[0]","storage":"string:io","interpret":false},{"nbt":"out[1]","storage":"string:io","interpret":false},{"nbt":"out[2]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 0 if score buried_treasure temporary_x_sign matches 0 run tellraw @a[team=explorer] ["X: digit",{"nbt":"out[0]","storage":"string:io","interpret":false},{"nbt":"out[1]","storage":"string:io","interpret":false},{"nbt":"out[2]","storage":"string:io","interpret":false}]

execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 run tellraw @a[team=explorer] ["Searchin for tilda.. Number fount at out[3]: ",{"nbt":"out[3]","storage":"string:io","interpret":false}]

#X is Postive Thousands Place or Negative Hundreds Place
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 run data modify storage core:sign space set value " "
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 store success score out4 temporary_space run data modify storage core:sign space set from storage string:io out[4]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 0 run tellraw @a[team=explorer] ["Space Found out[4]: ",{"nbt":"out[4]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 0 if score buried_treasure temporary_x_sign matches 1 run tellraw @a[team=explorer] ["X: digit",{"nbt":"out[0]","storage":"string:io","interpret":false},{"nbt":"out[1]","storage":"string:io","interpret":false},{"nbt":"out[2]","storage":"string:io","interpret":false},{"nbt":"out[3]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 0 if score buried_treasure temporary_x_sign matches 0 run tellraw @a[team=explorer] ["X: digit",{"nbt":"out[0]","storage":"string:io","interpret":false},{"nbt":"out[1]","storage":"string:io","interpret":false},{"nbt":"out[2]","storage":"string:io","interpret":false},{"nbt":"out[3]","storage":"string:io","interpret":false}]

execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 1 run tellraw @a[team=explorer] ["Searchin for tilda.. Number fount at out[4]: ",{"nbt":"out[4]","storage":"string:io","interpret":false}]

#X is Postive Ten Thousands Place or Negative Thousands Place
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 1 run data modify storage core:sign space set value " "
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 1 store success score out5 temporary_space run data modify storage core:sign space set from storage string:io out[5]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 1 if score out5 temporary_space matches 0 run tellraw @a[team=explorer] ["Space Found out[5]: ",{"nbt":"out[5]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 1 if score out5 temporary_space matches 0 if score buried_treasure temporary_x_sign matches 1 run tellraw @a[team=explorer] ["X is positive thousands place ",{"nbt":"out[0]","storage":"string:io","interpret":false},{"nbt":"out[1]","storage":"string:io","interpret":false},{"nbt":"out[2]","storage":"string:io","interpret":false},{"nbt":"out[3]","storage":"string:io","interpret":false}]
execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 1 if score out5 temporary_space matches 0 if score buried_treasure temporary_x_sign matches 0 run tellraw @a[team=explorer] ["X is negativehundreds place ",{"nbt":"out[0]","storage":"string:io","interpret":false},{"nbt":"out[1]","storage":"string:io","interpret":false},{"nbt":"out[2]","storage":"string:io","interpret":false},{"nbt":"out[3]","storage":"string:io","interpret":false}]

execute if score out1 temporary_space matches 1 if score out2 temporary_space matches 1 if score out3 temporary_space matches 1 if score out4 temporary_space matches 1 if score out5 temporary_space matches 1 run tellraw @a[team=explorer] ["Searchin for space.. Number fount at out[5]: ",{"nbt":"out[5]","storage":"string:io","interpret":false}]


#Start Parsing



