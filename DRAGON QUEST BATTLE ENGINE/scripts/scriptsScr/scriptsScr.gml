// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function battleStartScr()
{
	room_goto(battleRoom)

	if real(enemyWhat[# 0,12])==0
	{
		howManyEnemies=irandom_range(1,4)
	}else if (enemyWhat[# 0,12])==1
	{
		howManyEnemies=real(enemyWhat[# 0,13])
	}

	switch (howManyEnemies) {
	    case 1:
	        
			if randomEncounter=0 //TRUE
			{
				var singleRandom=irandom_range(1,ds_grid_width(enemyWhat)-2)
				enemy1Name=string(enemyWhat[# singleRandom,0])
				enemy1HP=real(enemyWhat[# singleRandom,1])
				enemy1MP=real(enemyWhat[# singleRandom,2])
				enemy1Spr=sprite_add(string(enemyWhat[# singleRandom,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy1=real(enemyWhat[# 0,30])
				
				enemy1Name=string(enemyWhat[# placeEnemy1,0])
				enemy1HP=real(enemyWhat[# placeEnemy1,1])
				enemy1MP=real(enemyWhat[# placeEnemy1,2])
				enemy1Spr=sprite_add(string(enemyWhat[# placeEnemy1,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
			
			}
			
	        break;
				
	    case 2:
	        
			if randomEncounter=0 //TRUE
			{
				var singleRandom=irandom_range(1,ds_grid_width(enemyWhat)-2)
				enemy1Name=string(enemyWhat[# singleRandom,0])
				enemy1HP=real(enemyWhat[# singleRandom,1])
				enemy1MP=real(enemyWhat[# singleRandom,2])
				enemy1Spr=sprite_add(string(enemyWhat[# singleRandom,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy1=real(enemyWhat[# 0,30])
				
				enemy1Name=string(enemyWhat[# placeEnemy1,0])
				enemy1HP=real(enemyWhat[# placeEnemy1,1])
				enemy1MP=real(enemyWhat[# placeEnemy1,2])
				enemy1Spr=sprite_add(string(enemyWhat[# placeEnemy1,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
			
			}
			
			if randomEncounter=0 //TRUE
			{
				var singleRandom2=irandom_range(1,ds_grid_width(enemyWhat)-2)
				
				enemy2Name=string(enemyWhat[# singleRandom2,0])
				enemy2HP=real(enemyWhat[# singleRandom2,1])
				enemy2MP=real(enemyWhat[# singleRandom2,2])
				enemy2Spr=sprite_add(string(enemyWhat[# singleRandom2,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy2Spr, sprite_get_width(enemy2Spr)/2, sprite_get_height(enemy2Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy2=real(enemyWhat[# 0,31])
				
				enemy2Name=string(enemyWhat[# placeEnemy2,0])
				enemy2HP=real(enemyWhat[# placeEnemy2,1])
				enemy2MP=real(enemyWhat[# placeEnemy2,2])
				enemy2Spr=sprite_add(string(enemyWhat[# placeEnemy2,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy2Spr, sprite_get_width(enemy2Spr)/2, sprite_get_height(enemy2Spr));
			
			}
			
	        break;
			
	    case 3:
			if randomEncounter=0 //TRUE
			{
				var singleRandom=irandom_range(1,ds_grid_width(enemyWhat)-2)
				enemy1Name=string(enemyWhat[# singleRandom,0])
				enemy1HP=real(enemyWhat[# singleRandom,1])
				enemy1MP=real(enemyWhat[# singleRandom,2])
				enemy1Spr=sprite_add(string(enemyWhat[# singleRandom,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy1=real(enemyWhat[# 0,30])
				
				enemy1Name=string(enemyWhat[# placeEnemy1,0])
				enemy1HP=real(enemyWhat[# placeEnemy1,1])
				enemy1MP=real(enemyWhat[# placeEnemy1,2])
				enemy1Spr=sprite_add(string(enemyWhat[# placeEnemy1,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
			
			}
			
			if randomEncounter=0 //TRUE
			{
				var singleRandom2=irandom_range(1,ds_grid_width(enemyWhat)-2)
				
				enemy2Name=string(enemyWhat[# singleRandom2,0])
				enemy2HP=real(enemyWhat[# singleRandom2,1])
				enemy2MP=real(enemyWhat[# singleRandom2,2])
				enemy2Spr=sprite_add(string(enemyWhat[# singleRandom2,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy2Spr, sprite_get_width(enemy2Spr)/2, sprite_get_height(enemy2Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy2=real(enemyWhat[# 0,31])
				
				enemy2Name=string(enemyWhat[# placeEnemy2,0])
				enemy2HP=real(enemyWhat[# placeEnemy2,1])
				enemy2MP=real(enemyWhat[# placeEnemy2,2])
				enemy2Spr=sprite_add(string(enemyWhat[# placeEnemy2,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy2Spr, sprite_get_width(enemy2Spr)/2, sprite_get_height(enemy2Spr));
			
			}
			
			if randomEncounter=0 //TRUE
			{
				var singleRandom3=irandom_range(1,ds_grid_width(enemyWhat)-2)
				
				enemy3Name=string(enemyWhat[# singleRandom3,0])
				enemy3HP=real(enemyWhat[# singleRandom3,1])
				enemy3MP=real(enemyWhat[# singleRandom3,2])
				enemy3Spr=sprite_add(string(enemyWhat[# singleRandom3,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy3Spr, sprite_get_width(enemy3Spr)/2, sprite_get_height(enemy3Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy3=real(enemyWhat[# 0,32])
				
				enemy3Name=string(enemyWhat[# placeEnemy3,0])
				enemy3HP=real(enemyWhat[# placeEnemy3,1])
				enemy3MP=real(enemyWhat[# placeEnemy3,2])
				enemy3Spr=sprite_add(string(enemyWhat[# placeEnemy3,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy3Spr, sprite_get_width(enemy3Spr)/2, sprite_get_height(enemy3Spr));
			
			}
	        break;
			
		case 4:
			if randomEncounter=0 //TRUE
			{
				var singleRandom=irandom_range(1,ds_grid_width(enemyWhat)-2)
				enemy1Name=string(enemyWhat[# singleRandom,0])
				enemy1HP=real(enemyWhat[# singleRandom,1])
				enemy1MP=real(enemyWhat[# singleRandom,2])
				enemy1Spr=sprite_add(string(enemyWhat[# singleRandom,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy1=real(enemyWhat[# 0,30])
				
				enemy1Name=string(enemyWhat[# placeEnemy1,0])
				enemy1HP=real(enemyWhat[# placeEnemy1,1])
				enemy1MP=real(enemyWhat[# placeEnemy1,2])
				enemy1Spr=sprite_add(string(enemyWhat[# placeEnemy1,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
			
			}
			
			if randomEncounter=0 //TRUE
			{
				var singleRandom2=irandom_range(1,ds_grid_width(enemyWhat)-2)
				
				enemy2Name=string(enemyWhat[# singleRandom2,0])
				enemy2HP=real(enemyWhat[# singleRandom2,1])
				enemy2MP=real(enemyWhat[# singleRandom2,2])
				enemy2Spr=sprite_add(string(enemyWhat[# singleRandom2,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy2Spr, sprite_get_width(enemy2Spr)/2, sprite_get_height(enemy2Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy2=real(enemyWhat[# 0,31])
				
				enemy2Name=string(enemyWhat[# placeEnemy2,0])
				enemy2HP=real(enemyWhat[# placeEnemy2,1])
				enemy2MP=real(enemyWhat[# placeEnemy2,2])
				enemy2Spr=sprite_add(string(enemyWhat[# placeEnemy2,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy2Spr, sprite_get_width(enemy2Spr)/2, sprite_get_height(enemy2Spr));
			
			}
			
			if randomEncounter=0 //TRUE
			{
				var singleRandom3=irandom_range(1,ds_grid_width(enemyWhat)-2)
				
				enemy3Name=string(enemyWhat[# singleRandom3,0])
				enemy3HP=real(enemyWhat[# singleRandom3,1])
				enemy3MP=real(enemyWhat[# singleRandom3,2])
				enemy3Spr=sprite_add(string(enemyWhat[# singleRandom3,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy3Spr, sprite_get_width(enemy3Spr)/2, sprite_get_height(enemy3Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy3=real(enemyWhat[# 0,32])
				
				enemy3Name=string(enemyWhat[# placeEnemy3,0])
				enemy3HP=real(enemyWhat[# placeEnemy3,1])
				enemy3MP=real(enemyWhat[# placeEnemy3,2])
				enemy3Spr=sprite_add(string(enemyWhat[# placeEnemy3,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy3Spr, sprite_get_width(enemy3Spr)/2, sprite_get_height(enemy3Spr));
			
			}
			
			if randomEncounter=0 //TRUE
			{
				var singleRandom4=irandom_range(1,ds_grid_width(enemyWhat)-2)
				enemy4Name=string(enemyWhat[# singleRandom4,0])
				enemy4HP=real(enemyWhat[# singleRandom4,1])
				enemy4MP=real(enemyWhat[# singleRandom4,2])
				enemy4Spr=sprite_add(string(enemyWhat[# singleRandom4,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy4Spr, sprite_get_width(enemy4Spr)/2, sprite_get_height(enemy4Spr));
			}else if randomEncounter=1 { //FALSE
				
				placeEnemy4=real(enemyWhat[# 0,33])
				
				enemy4Name=string(enemyWhat[# placeEnemy4,0])
				enemy4HP=real(enemyWhat[# placeEnemy4,1])
				enemy4MP=real(enemyWhat[# placeEnemy4,2])
				enemy4Spr=sprite_add(string(enemyWhat[# placeEnemy4,9])+".png",1,false,false,16,32)
				sprite_set_offset(enemy4Spr, sprite_get_width(enemy4Spr)/2, sprite_get_height(enemy4Spr));
			
			}
	        break;
			
	    default:
			anyError=true
	        error0001=true
			restartWithEnter=true
	        break;
	}

}

function syncTransition()
{
		if !instance_exists(fakeSyncObj) and global.fakeSyncTransitions=0
			{
				instance_create_depth(0,0,-9999999,fakeSyncObj)	
			}	
}