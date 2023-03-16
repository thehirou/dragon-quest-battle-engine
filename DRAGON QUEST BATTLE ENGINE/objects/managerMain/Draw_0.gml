draw_set_color(coloredWorld)
draw_set_font(global.dqFont)

if letsGoToBattle=true
{
	draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,varAnimX,varAnim,0,coloredWorld,1)
	draw_text_ext_color(46,156,commandText,10,180,coloredWorld,coloredWorld,coloredWorld,coloredWorld,1)
}

if afterIntroText=false and debug=true
{
	draw_text(5,5,enemy1Name)
	draw_text(5,15,enemy2Name)
	draw_text(5,25,enemy3Name)
	draw_text(5,35,enemy4Name)
}

if debug=true
{
	draw_text(5,room_height-10,holdingItem+" x"+string(quantityItem)+" / "+spellSelect)
}
	
if room=battleInitRoom
{
draw_sprite(splashSpr,0,0,-130)	
}


		switch (howManyEnemies)
		{
		    case 1:
				draw_sprite(enemy1Spr,0,room_width/2,(room_height/2)+5)
				enemy1SpriteX=room_width/2
			break;
			
			case 2:
				draw_sprite(enemy1Spr,0,((room_width/2)/2)+32,(room_height/2)+5)
				draw_sprite(enemy2Spr,0,(((room_width/2)/2)+room_width/2)-32,(room_height/2)+5)
				enemy1SpriteX=((room_width/2)/2)+32
				enemy2SpriteX=(((room_width/2)/2)+room_width/2)-32
			break;
			
			case 3:
				draw_sprite(enemy1Spr,0,(room_width/2)/2,(room_height/2)+5)
				draw_sprite(enemy2Spr,0,room_width/2,(room_height/2)+5)
				draw_sprite(enemy3Spr,0,((room_width/2)/2)+room_width/2,(room_height/2)+5)
				enemy1SpriteX=(room_width/2)/2
				enemy2SpriteX=room_width/2
				enemy3SpriteX=((room_width/2)/2)+room_width/2
			break;
			
			case 4:
				draw_sprite(enemy1Spr,0,((room_width/2)/2)-10,(room_height/2)+5)
				draw_sprite(enemy2Spr,0,((room_width/2)/2)+40,(room_height/2)+5)
				draw_sprite(enemy3Spr,0,(((room_width/2)/2)+room_width/2)-40,(room_height/2)+5)
				draw_sprite(enemy4Spr,0,(((room_width/2)/2)+room_width/2)+10,(room_height/2)+5)
				enemy1SpriteX=((room_width/2)/2)-10
				enemy2SpriteX=((room_width/2)/2)+40
				enemy3SpriteX=(((room_width/2)/2)+room_width/2)-40
				enemy4SpriteX=(((room_width/2)/2)+room_width/2)+10
			break;
		}


#region //I CAN'T FUCKING READ THIS LEMME CLOSE THIS [There's a lot of shit]

if room=battleRoom and anyError=false
{
		if afterIntroText=false
		{
			draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,varAnimX,varAnim,0,coloredWorld,1)
		}
		if varAnimX>=xTotalFirstTextBox and afterIntroText=false and restartWithEnter=false
		{
			draw_text_ext(46,156,whatDidAppear,10,170)
			if keyboard_check_pressed(vk_enter)
			{
					afterIntroText=true
			}
		}
		
		if letsGoToBattle=false and afterIntroText=true 
		{
			draw_sprite_ext(textBox,0,68+96,(room_height/2)+65+yEnemyBox,10,yScaleEnemyBox,0,coloredWorld,1)
			draw_text_ext(25+7+10+10+72-10,141+10,enemyList,16,180)
			
			if !instance_exists(objTransitionReverse) and stopTransition=true
			{
				instance_create_depth(0,0,-999999,objTransitionReverse)
				objTransitionReverse.image_speed=1
				stopTransition=false
			}
		}
		
		if afterIntroText=true
		{
			draw_sprite_ext(textBox,0,boxInfoX,35,boxInfoScaleX,4,0,coloredWorld,1)
				switch(partyMembers)
				{
					case 1:
						draw_text_ext(infoTextX,infoTextY,"H "+string(firstHP)+"\n\nM "+string(firstMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX,9,34,7,0,c_black,1)
						draw_text_ext(112,9,firstName,10,180)
						boxInfoX=(room_width/2)
						boxInfoScaleX=4
						littleSquareX=110
						infoTextX=112
						infoTextY=21
					break;
					
					case 2:
						draw_text_ext(infoTextX,infoTextY,"H "+string(firstHP)+"\n\nM "+string(firstMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX,9,34,7,0,c_black,1)
						draw_text_ext(infoTextX,9,firstName,10,180)
						
						draw_text_ext(infoTextX+42,infoTextY,"H "+string(scndHP)+"\n\nM "+string(scndMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX+42 /*42 = SEPARATION*/ ,9,34,7,0,c_black,1)
						draw_text_ext(infoTextX+42,9,scndName,10,180)
						boxInfoX=(room_width/3)+10-15
						boxInfoScaleX=8
						littleSquareX=47+10-15
						infoTextX=49+10-15
						infoTextY=21
					break;
					
					case 3:
						draw_text_ext(infoTextX,infoTextY,"H "+string(firstHP)+"\n\nM "+string(firstMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX,9,34,7,0,c_black,1)
						draw_text_ext(infoTextX,9,firstName,10,180)
						
						draw_text_ext(infoTextX+42,infoTextY,"H "+string(scndHP)+"\n\nM "+string(scndMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX+42 /*42 = SEPARATION*/ ,9,34,7,0,c_black,1)
						draw_text_ext(infoTextX+42,9,scndName,10,180)
						
						draw_text_ext(infoTextX+42+42,infoTextY,"H "+string(thrdHP)+"\n\nM "+string(thrdMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX+42+42 /*42 = SEPARATION*/ ,9,34,7,0,c_black,1)
						draw_text_ext(infoTextX+42+42,9,thrdName,10,180)
						
						boxInfoX=(room_width/3)+10+9
						boxInfoScaleX=12
						littleSquareX=23+10+9
						infoTextX=25+10+9
						infoTextY=21
					break;
					
					case 4:
						draw_text_ext(infoTextX,infoTextY,"H "+string(firstHP)+"\n\nM "+string(firstMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX,9,34,7,0,c_black,1)
						draw_text_ext(infoTextX,9,firstName,10,180)
						
						draw_text_ext(infoTextX+42,infoTextY,"H "+string(scndHP)+"\n\nM "+string(scndMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX+42 /*42 = SEPARATION*/ ,9,34,7,0,c_black,1)
						draw_text_ext(infoTextX+42,9,scndName,10,180)
						
						draw_text_ext(infoTextX+42+42,infoTextY,"H "+string(thrdHP)+"\n\nM "+string(thrdMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX+42+42 /*42 = SEPARATION*/ ,9,35,7,0,c_black,1) //THE XSCALE IS MODIFIED BECAUSE IT WAS WEIRD 4 SOME REASON
						draw_text_ext(infoTextX+42+42,9,thrdName,10,180)
						
						draw_text_ext(infoTextX+42+42+42,infoTextY,"H "+string(forthHP)+"\n\nM "+string(forthMP),10,180)
						draw_sprite_ext(whitePixel,1,littleSquareX+42+42+42 /*42 = SEPARATION*/ ,9,29,7,0,c_black,1) //THE XSCALE IS MODIFIED BECAUSE IT WAS WEIRD 4 SOME REASON
						draw_text_ext(infoTextX+42+42+42,9,forthName,10,180)
						
						boxInfoX=(room_width/3)+36+7
						boxInfoScaleX=16
						littleSquareX=23+10+7
						infoTextX=25+10+7
						infoTextY=21
					break;
					
					default:
						anyError=true
						error0002=true
						restartWithEnter=true
					break;
				}
		
		
		
		if letsGoToBattle=false and selectionTime=true
		{
		if inventoryShow=false and spellShow=false
		{
		draw_sprite_ext(textBox,0,68,(room_height/2)+65,6,7,0,coloredWorld,1)
		draw_sprite_ext(whitePixel,1,30+10+10,139,34,7,0,c_black,1) 
		if enemSelec=false
			{
				draw_sprite_ext(arrowSpr,subImgTintilineo,25+10+10+7,drawArrowY,1,1,0,coloredWorld,1)
			}
		}
		
		if keyboard_check_pressed(vk_down) and selectedThing<3 and !instance_exists(objTransitionReverse)
		{
			if preventMove=false
			{
				audio_play_sound(global.beepAudioOgg,1,false)
				timer1=0
				selectedThing++;	
			}
		}
		
		if keyboard_check_pressed(vk_up) and selectedThing>0 and !instance_exists(objTransitionReverse)
		{
			if preventMove=false
			{
				audio_play_sound(global.beepAudioOgg,1,false)
				timer1=0
				selectedThing--;	
			}
		}
		
		/*	
		if keyboard_check_pressed(vk_enter) and turnToSelect<=partyMembers-2 and !instance_exists(objTransitionReverse)
		{
			//TESTEO
			syncTransition()
			timer1=0
			turnToSelect++;	
			selectedThing=0
		}
		*/
		
		if letsGoToBattle=false and spellShow=false and enemSelec=false and inventoryShow=false and keyboard_check_pressed(vk_enter) and turnToSelect<=partyMembers-1 and !instance_exists(objTransitionReverse) and selectedThing=0 and !instance_exists(fakeSyncObj)
		{
			syncTransition()
			timer1=0
			enemSelec=true
			preventMove=true
		}
		
		if letsGoToBattle=false and inventoryShow=false and enemSelec=false and spellShow=false and keyboard_check_pressed(vk_enter) and turnToSelect<=partyMembers-1 and !instance_exists(objTransitionReverse) and selectedThing=2 and !instance_exists(fakeSyncObj)
		{
			syncTransition()
			timer1=0
			inventoryShow=true
			preventMove=true
		}
		
		if letsGoToBattle=false and spellShow=false and enemSelec=false and inventoryShow=false and keyboard_check_pressed(vk_enter) and turnToSelect<=partyMembers-1 and !instance_exists(objTransitionReverse) and selectedThing=1 and !instance_exists(fakeSyncObj)
		{
			syncTransition()
			timer1=0
			spellShow=true
			preventMove=true
		}
		
		if enemSelec=true
		{
			//draw_sprite_ext(arrowSprSelecEnem,subImgTintilineo,selecEnemX,selecEnemY,1,1,0,coloredWorld,1)
			draw_sprite_ext(arrowSprWhichGroup,subImgTintilineo,selecGroupX,selecGroupY,1,1,0,coloredWorld,1)
		}
		
		
		if spellShow=true
		{
		draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,varAnimX,varAnim,0,coloredWorld,1)	
		draw_text_ext(25+7+10+10,141+16,spellA1+"\n"+spellA2+"\n"+spellA3+"\n"+spellA4,16,180)
		draw_text_ext(room_width/2,141+16,spellB1+"\n"+spellB2+"\n"+spellB3+"\n"+spellB4,16,180)
		draw_sprite_ext(arrowSpr,subImgTintilineo,invArrowX,invDrawArrowY,1,1,0,coloredWorld,1)
		}
		
		if inventoryShow=true
		{
		draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,varAnimX,varAnim,0,coloredWorld,1)	
		draw_text_ext(25+7+10+10,141+16,invA1+"\n"+invA2+"\n"+invA3+"\n"+invA4,16,180)
		draw_text_ext(room_width/2,141+16,invB1+"\n"+invB2+"\n"+invB3+"\n"+invB4,16,180)
		draw_sprite_ext(arrowSpr,subImgTintilineo,invArrowX,invDrawArrowY,1,1,0,coloredWorld,1)
		}
		
		switch (selectedThing) {
		    case 0:
		        drawArrowY=160
		        break;
				
			case 1:
		        drawArrowY=160+16
		        break;
				
			case 2:
		        drawArrowY=160+16+16
		        break;
				
			case 3:
		        drawArrowY=160+16+16+16
		        break;
				
		    default:
		        // code here
		        break;
		}
		
		if inventoryShow=false and spellShow=false 
			{
			switch (turnToSelect)
				{
				    case 0: //FIRST PARTY MEMBER
				        draw_text_ext(25+7+10+10,141,firstName+"\n"+"FIGHT\nSPELL\nITEM\nRUN",16,180)
				        break;
					
				    case 1: //SECOND PARTY MEMBER
				        draw_text_ext(25+7+10+10,141,scndName+"\n"+"FIGHT\nSPELL\nITEM\nRUN",16,180)
				        break;
					
				    case 2: //THIRD PARTY MEMBER
				        draw_text_ext(25+7+10+10,141,thrdName+"\n"+"FIGHT\nSPELL\nITEM\nRUN",16,180)
				        break;
					
				    case 3: //FOURTH PARTY MEMBER
				        draw_text_ext(25+7+10+10,141,forthName+"\n"+"FIGHT\nSPELL\nITEM\nRUN",16,180)
				        break;
					
				    default:
				        // code here
				        break;
				}
			}
		}	
	}
}
#endregion

#region //ERROR DRAWING
if error0001=true and varAnimX>=xTotalFirstTextBox
{
	draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,varAnimX,varAnim,0,c_red,1)
	draw_text_ext_color(46,156,"Error 0001:\nYou can't battle more than 4 enemies.\nRestart.",10,180,c_red,c_red,c_red,c_red,1)
	draw_sprite_ext(arrowSpr,subImgTintilineo,46,189,1,1,0,c_red,1)
}

if error0002=true
{
	draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,varAnimX,varAnim,0,c_red,1)
	draw_text_ext_color(46,156,"Error 0002:\nYou can't have more than 4 party members.\nRestart.",10,180,c_red,c_red,c_red,c_red,1)
	draw_sprite_ext(arrowSpr,subImgTintilineo,46,189,1,1,0,c_red,1)
}

if error0003=true and varAnimX>=xTotalFirstTextBox
{
	draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,varAnimX,varAnim,0,c_red,1)
	draw_text_ext_color(46,156,"Error 0003:\nSomeone has a name with more than 4 letters.\nRestart.",10,180,c_red,c_red,c_red,c_red,1)
	draw_sprite_ext(arrowSpr,subImgTintilineo,46,189,1,1,0,c_red,1)
}

if error0004=true and room=battleRoom
{
	draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,varAnimX,varAnim,0,c_red,1)
	draw_text_ext_color(46,156,"Error 0004:\nRandom enemies (Row 30)\nMust be 0 or 1\nRestart.",10,180,c_red,c_red,c_red,c_red,1)
	draw_sprite_ext(arrowSpr,subImgTintilineo,46,189,1,1,0,c_red,1)
}
#endregion