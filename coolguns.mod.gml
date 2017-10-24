#define init
global.coolgun = []
array_push(global.coolgun,[])
for (var n = 1; n <= 127; n++){
	array_push(global.coolgun,[])
	global.coolgun[n][@0] = weapon_get_sprt(n)
}
//revolver
for (var i = 1;i<=9;i++){
	array_push(global.coolgun[1],sprite_add_weapon("rev"+string(i)+".png",-2,2))
}
//wrench
for (var i = 1;i<=3;i++){
	array_push(global.coolgun[3],sprite_add_weapon("wrench"+string(i)+".png",-1,3))
}
//machinegun
	array_push(global.coolgun[4],sprite_add_weapon("machinegun1.png",2,0))
	array_push(global.coolgun[4],sprite_add_weapon("machinegun2.png",2,1))
//shotgun
	array_push(global.coolgun[5],sprite_add_weapon("shotgun1.png",2,1))
	array_push(global.coolgun[5],sprite_add_weapon("shotgun2.png",3,2))
//minigun
	array_push(global.coolgun[9],sprite_add_weapon("minigun1.png",3,4))
	array_push(global.coolgun[9],sprite_add_weapon("minigun2.png",3,4))
//shovel
	array_push(global.coolgun[13],sprite_add_weapon("shovel1.png",2,6))
//bazooka
	array_push(global.coolgun[14],sprite_add_weapon("bazooka1.png",7,3))
//disc gun
	array_push(global.coolgun[18],sprite_add_weapon("discgun1.png",0,2))
//laser pistol
	array_push(global.coolgun[19],sprite_add_weapon("laserpistol1.png",-2,1))
//laser rifle
	array_push(global.coolgun[20],sprite_add_weapon("laserrifle1.png",3,2))
//screwdriver
	array_push(global.coolgun[27],sprite_add_weapon("screwdriver1.png",4,3))
//flare gun
	array_push(global.coolgun[52],sprite_add_weapon("flare1.png",0,2))
//laser cannon
	array_push(global.coolgun[55],sprite_add_weapon("lasercannon1.png",3,1))
//heavy revolver
for (var i = 1;i<=3;i++){
	array_push(global.coolgun[89],sprite_add_weapon("hrev"+string(i)+".png",-2,2))
}

weproll()
global.startroll = 0
#define game_start
if global.startroll weproll()
global.startroll = 1

#define step
if button_pressed(0,"horn"){
	weproll()
}

#define weproll
for (var i = 1;i < array_length_1d(global.coolgun); i++){
	weapon_set_sprt(i,global.coolgun[i][irandom(array_length_1d(global.coolgun[i])-1)])
}

#define cleanup
for (var i = 1;i < array_length_1d(global.coolgun); i++){
	weapon_set_sprt(i,global.coolgun[i][@0])
}
