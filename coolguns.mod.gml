#define init
global.coolgun = []
array_push(global.coolgun,[])
for (var n = 1; n <= 127; n++){
	array_push(global.coolgun,[])
	global.coolgun[n][@0] = weapon_get_sprt(n)
}
//revolver
for (var i = 1;i<=19;i++){
	p(1,"rev" + string(i),-2,2)
}
//wrench
for (var i = 1;i<=4;i++){
	p(3,"wrench"+string(i),-1,3)
}
	p(3,"wrench5",4,3)
	array_push(global.coolgun[3],sprPipe)
//machinegun
	p(4,"machinegun1",2,0)
	p(4,"machinegun2",2,1)
//shotgun
	p(5,"shotgun1",2,1)
	p(5,"shotgun2",3,2)
//minigun
	p(9,"minigun1",3,4)
	p(9,"minigun2",3,4)
//shovel
	p(13,"shovel1",2,6)
//bazooka
	p(14,"bazooka1",7,3)
//smg
	array_push(global.coolgun[16],sprRavenGun)
	p(16,"smg1",1,4)
//disc gun
	p(18,"discgun1",0,2)
//laser pistol
	p(19,"laserpistol1",-2,1)
//laser rifle
	p(20,"laserrifle1",3,2)
//screwdriver
	p(27,"screwdriver1",4,3)
//flak cannon
	p(38,"flak1",2,1)
//flare gun
	p(52,"flare1",0,2)
//laser cannon
	p(55,"lasercannon1",3,1)
//blood hammer
	p(67,"bloodhammer1",4,3)
//heavy revolver
for (var i = 1;i<=5;i++){
	p(89,"hrev" + string(i),-2,2)
}
//eraser
	p(114,"eraser1",2,1)
//okay i dont wanna sort them properly now
p(wep_assault_rifle,"assaultrifle1",3,2)
p(wep_auto_grenade_shotgun,"autogrenadeshotgun1",0,2)
p(wep_black_sword,"blacksword1",2,3)
p(wep_black_sword,"blacksword2",2,3)
p(wep_blood_cannon,"bloodcannon1",3,3)
p(67,"bloodhammer2",5,5)
p(wep_chicken_sword,"chickensword1",2,3)
p(wep_chicken_sword,"chickensword2",2,3)
p(wep_cluster_launcher,"clusterlauncher1",2,2)
p(wep_disc_gun,"discgun2",-2,1)
p(wep_dragon,"dragon1",3,3)
p(wep_flame_cannon,"flamecannon1",3,3)
p(wep_flamethrower,"flamethrower1",2,2)
p(wep_flare_gun,"flare2",0,1)
p(wep_golden_frog_pistol,"frogga1",0,3)
p(wep_gatling_slugger,"gatlingslugger1",2,1)	
p(wep_gatling_slugger,"gatlingslugger2",2,1)
p(wep_golden_disc_gun,"golddiscgun1",-2,1)
p(wep_grenade_launcher,"grenadelauncher1",2,3)
p(wep_grenade_rifle,"grenaderifle1",1,1)
p(wep_grenade_shotgun,"grenadeshotgun1",2,2)
p(wep_heavy_grenade_launcher,"heavylauncher1",4,3)
p(wep_hyper_launcher,"hyperlauncher1",3,3)
p(wep_jackhammer,"jackhammer1",3,3)
p(wep_lightning_hammer,"lightninghammer1",4,4)
p(wep_nuke_launcher,"nukelauncher1",5,5)
p(wep_pop_rifle,"poprifle1",1,1)
p(wep_rogue_rifle,"roguerifle1",2,2)
p(wep_rogue_rifle,"roguerifle2",2,2)
p(wep_screwdriver,"screwdriver2",-2,2)
p(wep_shovel,"shovel2",5,4)
p(wep_shovel,"shovel3",1,4)
p(wep_sledgehammer,"sledgehammer1",4,6)
p(wep_sticky_launcher,"stickylauncher1",2,2)
p(wep_super_bazooka,"superbazooka1",7,4)
p(wep_super_disc_gun,"superdiscgun1",3,4)
p(wep_toxic_launcher,"toxiclauncher1",2,2)
p(wep_ultra_shovel,"ultrashovel1",1,4)
p(wep_gatling_bazooka,"gatlingbazooka1",7,2)
p(wep_heavy_machinegun,"hmachinegun1",3,3)
p(wep_guitar,"guitar1",4,5)
p(wep_guitar,"guitar2",4,5)
p(wep_lightning_hammer,"lightninghammer2",4,6)
p(wep_machinegun,"machinegun3",2,2)
p(wep_smg,"smg2",1,2)
p(wep_energy_sword,"energysword1",0,5)
p(wep_bazooka,"bazooka2",14,4)
p(wep_shotgun,"shotgun3",2,0)
p(wep_eraser,"eraser2",0,2)
p(wep_super_plasma_cannon,"spc1",9,9)
p(wep_energy_sword,"energysword2",3,5)
p(wep_plasma_rifle,"plasmarifle1",4,2)

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

#define p(wep,file,xoff,yoff)
array_push(global.coolgun[wep],sprite_add_weapon(file+".png",xoff,yoff))