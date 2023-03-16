//show_debug_message(string(mouse_x)+" "+string(mouse_y))
	show_debug_message("1 "+string(whatDidParty1Do)+" "+string(whatDidYouAttack[0])+"2 "+string(whatDidParty2Do)+" "+string(whatDidYouAttack[1])+"3 "+string(whatDidParty3Do)+" "+string(whatDidYouAttack[2])+"4 "+string(whatDidParty3Do)+" "+string(whatDidYouAttack[3]))
switch (enemyOrder) {
    case "A":
		bigWindow=1
		amountE1=1
        enemyList=enemy1Name+" x"+string(amountE1)
        break;
	
	case "AA":
		bigWindow=1
		amountE1=2
        enemyList=enemy1Name+" x"+string(amountE1)
        break;
		
	case "AB":
		bigWindow=2
		amountE1=1
		amountE2=1
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)
        break;
		
	case "AAA":
		bigWindow=1
		amountE1=3
        enemyList=enemy1Name+" x"+string(amountE1)
        break;
		
	case "AAB":
		bigWindow=2
		amountE1=2
		amountE3=1
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy3Name+" x"+string(amountE3)
        break;
		
	case "ABB":
		bigWindow=2
		amountE1=1
		amountE2=2
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)
        break;
		
	case "ABA":
		bigWindow=3
		amountE1=1
		amountE2=1
		amountE3=1
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)+"\n"+enemy3Name+" x"+string(amountE3)
        break;
		
	case "AAAA":
		bigWindow=1
		amountE1=4
        enemyList=enemy1Name+" x"+string(amountE1)
        break;
		
	case "AABB":
		bigWindow=2
		amountE1=2
		amountE2=2
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)
        break;
		
	case "ABBA":
		bigWindow=3
		amountE1=1
		amountE2=2
		amountE3=1
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)+"\n"+enemy3Name+" x"+string(amountE3)
        break;
		
	case "ABBB":
		bigWindow=2
		amountE1=1
		amountE2=3
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)
        break;
		
	case "AAAB":
		bigWindow=2
		amountE1=3
		amountE2=1
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)
        break;
		
	case "ABAB":
		bigWindow=4
		amountE1=1
		amountE2=1
		amountE3=1
		amountE4=1
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)+"\n"+enemy3Name+" x"+string(amountE3)+"\n"+enemy4Name+" x"+string(amountE4)
        break;
		
	case "AABA":
		bigWindow=3
		amountE1=2
		amountE2=1
		amountE3=1
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)+"\n"+enemy3Name+" x"+string(amountE3)
        break;
		
	case "ABAA":
		bigWindow=3
		amountE1=1
		amountE2=1
		amountE3=2
        enemyList=enemy1Name+" x"+string(amountE1)+"\n"+enemy2Name+" x"+string(amountE2)+"\n"+enemy3Name+" x"+string(amountE3)
        break;
		
    default:
        enemyList="Woops, there's\nan error\nsomewhere."
        break;
}

switch (bigWindow) {
    case 1:
         yScaleEnemyBox=2
		 yEnemyBox=-12-12-6
        break;
		
    case 2:
        yScaleEnemyBox=3.5
		yEnemyBox=-12-9
        break;
		
    case 3:
       yScaleEnemyBox=4.7
	   yEnemyBox=-12-2
        break;
		
    case 4:
       yScaleEnemyBox=7
	   yEnemyBox=0
        break;
    default:
        // code here
        break;
}

#region //timer kaka
timer1++

if timer1<30
{
subImgTintilineo=0	
}

if timer1>30
{
subImgTintilineo=1	
}

if timer1>30*2
{
timer1=0	
}
#endregion

if randomEncounter!=0 and randomEncounter!=1
{
	if room=battleRoom
	{
		anyError=true
		error0004=true
		restartWithEnter=true	
	}
}


switch (howManyEnemies) {
    case 1:
        //A
		whatDidAppear="One "+string(enemy1Name)+" appears!"	
		enemyOrder="A"
        break;
		
    case 2:
        if enemy1Name=enemy2Name
		{ //AA
			whatDidAppear="Two "+string(enemy1Name)+"s appear!"
			enemyOrder="AA"
		}
		
		if enemy1Name!=enemy2Name
		{ //AB //BA
			whatDidAppear="One "+string(enemy1Name)+" and one "+string(enemy2Name)+" appear!"	
			enemyOrder="AB"
		}
        break;
		
    case 3:
        if enemy1Name=enemy2Name and enemy2Name=enemy3Name
		{ //AAA
			whatDidAppear="Three "+string(enemy1Name)+"s appear!"	
			enemyOrder="AAA"
		}
		
		if enemy1Name=enemy2Name and enemy2Name!= enemy3Name
		{ //AAB
			whatDidAppear="Two "+string(enemy1Name)+"s and one "+string(enemy3Name)+ " appear!"	
			enemyOrder="AAB"
		}
		
		if enemy1Name!=enemy2Name and enemy2Name=enemy3Name
		{ //ABB
			whatDidAppear="One "+string(enemy1Name)+" and two "+string(enemy2Name)+"s appear!"	
			enemyOrder="ABB"
		}
		
		if enemy1Name!=enemy2Name and enemy2Name!=enemy3Name
		{ //ABA
			whatDidAppear="One "+string(enemy1Name)+", one "+string(enemy2Name)+" and one "+string(enemy3Name)+" appear!"
			enemyOrder="ABA"
		}
        break;
		
    case 4:
        
		if enemy1Name=enemy2Name and enemy2Name=enemy3Name and enemy3Name=enemy4Name
		{ //AAAA
			whatDidAppear="A group of "+string(enemy1Name)+"s appear!"	
			enemyOrder="AAAA"
		}
		
		if enemy1Name=enemy2Name and enemy2Name!=enemy3Name and enemy3Name=enemy4Name
		{ //AABB
			whatDidAppear="Two "+string(enemy1Name)+"s and two "+string(enemy3Name)+"s appear!"
			enemyOrder="AABB"
		}
		
		if enemy1Name!=enemy2Name and enemy2Name=enemy3Name and enemy3Name!=enemy4Name
		{ //ABBA
			whatDidAppear="One "+string(enemy1Name)+", two "+string(enemy2Name)+" and one "+string(enemy4Name)+" appear!"
			enemyOrder="ABBA"
		}
		
		if enemy1Name!=enemy2Name and enemy2Name=enemy3Name and enemy3Name=enemy4Name
		{ //ABBB
			whatDidAppear="One "+string(enemy1Name)+" and three "+string(enemy2Name)+"s appear!"
			enemyOrder="ABBB"
		}
		
		if enemy1Name=enemy2Name and enemy2Name=enemy3Name and enemy3Name!=enemy4Name
		{ //AAAB
			whatDidAppear="Three "+string(enemy1Name)+" and one "+string(enemy4Name)+" appear!"
			enemyOrder="AAAB"
		}
		
		if enemy1Name!=enemy2Name and enemy2Name!=enemy3Name and enemy3Name!=enemy4Name
		{ //ABAB //ABCD
			whatDidAppear="One "+string(enemy1Name)+", one "+string(enemy2Name)+", one "+string(enemy3Name)+" and one "+string(enemy4Name)+" appear!"
			enemyOrder="ABAB"
		}
		
		if enemy1Name=enemy2Name and enemy2Name!=enemy3Name and enemy3Name!=enemy4Name
		{ //AABA //AABC
			whatDidAppear="Two "+string(enemy1Name)+"s, one "+string(enemy3Name)+" and one "+string(enemy4Name)+" appear!"
			enemyOrder="AABA"
		}
		
		if enemy1Name!=enemy2Name and enemy2Name!=enemy3Name and enemy3Name=enemy4Name
		{ //ABAA //ABCC
			whatDidAppear="One "+string(enemy1Name)+", one "+string(enemy2Name)+" and two "+string(enemy3Name)+" appear!"
			enemyOrder="ABAA"
		}
		
        break;
		
    default:
        // code here
        break;
}

if restartWithEnter=true and keyboard_check_pressed(vk_enter)
{
	game_restart()	
}

if keyboard_check_pressed(vk_enter) and canNoLongerInit=false and pressedEnter=false and debug=true
{
	pressedEnter=true
	flashObj.image_speed=1
	preBattleSnd=true
}

if keyboard_check_pressed(vk_enter) and debug=false  and canNoLongerInit=false and pressedEnter=false
{
			canNoLongerInit=true
			pressedEnter=false
			timer=0
			battleStartScr();
			audio_play_sound(global.battleMusicOgg,1,true)
}

if preBattleSnd=true
{
	audio_play_sound(global.preBattleAudioOgg,1,false)
	preBattleSnd=false
}

if pressedEnter=true
{
	timer++
	
	if timer>60 and !instance_exists(objTransition)
	{
		instance_create_layer(0,0,"transitionLayer",objTransition)	
	}
	
	if timer>120
		{
			canNoLongerInit=true
			pressedEnter=false
			timer=0
			battleStartScr();
			audio_play_sound(global.battleMusicOgg,1,true)
		}	
}

if room=battleRoom
{
	
	if varAnim<yTotalFirstTextBox
	{
		varAnim+=1
	}
	
	if varAnimX<xTotalFirstTextBox
	{
		varAnimX+=2
	}
	
}

if room=battleRoom
{
 if string_length(firstName)>=5 or string_length(scndName)>=5 or string_length(thrdName)>=5 or string_length(forthName)>=5
	{
		anyError=true
		error0003=true
		restartWithEnter=true	
	}
}

if inventoryShow=true
{
	
//if quantityItem<=0 //old error (6899)
//{
//	global.error0006=true
//	global.newTypeError=true
//}
	
	quantityItem=real(inventoryGrid[# inventoryColumn+4, pointerInv])

	
	if keyboard_check_pressed(vk_right)
	{
	inventoryColumn=1
	invArrowX=(room_height/2)+7
	timer1=0
	}
	
	if keyboard_check_pressed(vk_left)
	{
	inventoryColumn=0
	invArrowX=52
	timer1=0
	}
	
	if keyboard_check_pressed(vk_down) and L4<=ds_grid_height(inventoryGrid)-2
	{
	pointerInv++;
	timer1=0
	}
	
	if keyboard_check_pressed(vk_up) and pointerInv>0
	{
	pointerInv--;
	timer1=0
	}
	
	switch (pointerInv)
	{
	    case 0:
	        invDrawArrowY=160	
	        break;
			
		case 1:
	        invDrawArrowY=160+16
	        break;
			
		case 2:
	        invDrawArrowY=160+16+16
	        break;
			
		case 3:
	        invDrawArrowY=160+16+16+16
	        break;
			
	    default:
	        invDrawArrowY=160+16+16+16
	        break;
	}

if keyboard_check_pressed(vk_down) and pointerInv>=4 and L4<=ds_grid_height(inventoryGrid)-2
	{
		instance_create_layer(0,0,"littleSquareLayer",fakeSyncObj)
		L1++;
		L2++;
		L3++;
		L4++;
	}
	
if keyboard_check_pressed(vk_up) and pointerInv>=0 and L4>3
{
		instance_create_layer(0,0,"littleSquareLayer",fakeSyncObj)
		L1--;
		L2--;
		L3--;
		L4--;
}

}

invA1=string(inventoryGrid[# 0, L1])
invA2=string(inventoryGrid[# 0, L2])
invA3=string(inventoryGrid[# 0, L3])
invA4=string(inventoryGrid[# 0, L4])

invB1=string(inventoryGrid[# 1, L1])
invB2=string(inventoryGrid[# 1, L2])
invB3=string(inventoryGrid[# 1, L3])
invB4=string(inventoryGrid[# 1, L4])

holdingItem=inventoryGrid[# inventoryColumn, pointerInv]

if inventoryShow=true and onceSync=true
{
	instance_create_layer(0,0,"littleSquareLayer",fakeSyncObj)
	onceSync=false
}

if inventoryShow=true and spellShow=false and keyboard_check_pressed(vk_enter) and !instance_exists(fakeSyncObj)
{

	if quantityItem>0
	{
		inventoryGrid[# inventoryColumn+4, pointerInv]-=1
		quantityItem--;
	}
	
	if quantityItem<=0
	{
		inventoryGrid[# inventoryColumn, pointerInv]="---"
	}
}

if enemSelec=true and keyboard_check_pressed(vk_backspace)
{
	selectListEnemy=1
	preventMove=false
	enemSelec=false
	timer1=0
}

if inventoryShow=true and keyboard_check_pressed(vk_backspace)
{
	preventMove=false
	invArrowX=52
	pointerInv=0
	L1=0
	L2=1
	L3=2
	L4=3
	inventoryColumn=0
	onceSync=false
	inventoryShow=false
	selectedThing=0
	timer1=0
}

if enemSelec=true
{
	
	if keyboard_check_pressed(vk_enter)
	{
		

		
		switch (selectListGroup) {
			    case 1:
			        whatDidYouAttack[turnToSelect]=enemy1Name
			        break;
					
				case 2:
			        whatDidYouAttack[turnToSelect]=enemy2Name
			        break;
					
				case 3:
			         whatDidYouAttack[turnToSelect]=enemy3Name
			        break;
					
				case 4:
			         whatDidYouAttack[turnToSelect]=enemy4Name
			        break;
			    default:
			        // code here
			        break;
			}
		
		if turnToSelect=0
		{
			whatDidParty1Do="Attack"
		}
		
		if turnToSelect=1
		{
			whatDidParty2Do="Attack"
		}
		
		if turnToSelect=2
		{
			whatDidParty3Do="Attack"
		}
		
		if turnToSelect=3
		{
			whatDidParty4Do="Attack"
		}
		
		if turnToSelect=partyMembers-1
		{
			letsGoToBattle=true
		}
		
	instance_create_layer(0,0,"littleSquareLayer",fakeSyncObj)
	selectListGroup=1
	selectListEnemy=1
	preventMove=false
	enemSelec=false
	timer1=0
	turnToSelect++;
	}
	


	if keyboard_check_pressed(vk_right) and bigWindow>=1 and selectListGroup<howManyEnemies
	{
		selectListGroup++;
		timer1=0
	}
	
	
	if keyboard_check_pressed(vk_left) and selectListGroup>1 and bigWindow>=1
	{
		selectListGroup--;
		timer1=0
	}
	
	switch (selectListGroup) {
	    case 1:
	       selecGroupX=enemy1SpriteX
		   selecGroupY=((room_height/2)+5)-sprite_get_height(enemy1Spr)-8
	        break;
			
	    case 2:
	        selecGroupX=enemy2SpriteX
			selecGroupY=((room_height/2)+5)-sprite_get_height(enemy2Spr)-8
	        break;
			
	    case 3:
	        selecGroupX=enemy3SpriteX
			selecGroupY=((room_height/2)+5)-sprite_get_height(enemy3Spr)-8
	        break;
			
	    case 4:
	        selecGroupX=enemy4SpriteX
			selecGroupY=((room_height/2)+5)-sprite_get_height(enemy4Spr)-8
	        break;
	    default:
	        // code here
	        break;
	}
}



//SPELL MENU, THE SAME THING AS THE INVENTORY BUT STORED IN A SCRIPT BECAUSE OTHERWISE IT WOULDN'T BE READABLE
spellMenuScr();