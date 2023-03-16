// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spellMenuScr(){

if spellShow=true
{
	
	switch (turnToSelect) {
    case 0:
        whichPartyMember=0
        break;
		
	case 1:
        whichPartyMember=3
        break;
		
	case 2:
        whichPartyMember=6
        break;
		
	case 3:
        whichPartyMember=9
        break;
		
    default:
        global.error0005=true
		global.newTypeError=true
        break;
}
	
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
	
	if keyboard_check_pressed(vk_down) and L4<=ds_grid_height(partySpellsGrid)-2
	{
	pointerSpell++;
	timer1=0
	}
	
	if keyboard_check_pressed(vk_up) and pointerSpell>0
	{
	pointerSpell--;
	timer1=0
	}
	
	switch (pointerSpell)
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

if keyboard_check_pressed(vk_down) and pointerSpell>=4 and L4<=ds_grid_height(partySpellsGrid)-2
	{
		instance_create_layer(0,0,"littleSquareLayer",fakeSyncObj)
		L1++;
		L2++;
		L3++;
		L4++;
	}
	
if keyboard_check_pressed(vk_up) and pointerSpell>=0 and L4>3
{
		instance_create_layer(0,0,"littleSquareLayer",fakeSyncObj)
		L1--;
		L2--;
		L3--;
		L4--;
}

}

spellA1=string(partySpellsGrid[# 0+whichPartyMember, L1])
spellA2=string(partySpellsGrid[# 0+whichPartyMember, L2])
spellA3=string(partySpellsGrid[# 0+whichPartyMember, L3])
spellA4=string(partySpellsGrid[# 0+whichPartyMember, L4])

spellB1=string(partySpellsGrid[# 1+whichPartyMember, L1])
spellB2=string(partySpellsGrid[# 1+whichPartyMember, L2])
spellB3=string(partySpellsGrid[# 1+whichPartyMember, L3])
spellB4=string(partySpellsGrid[# 1+whichPartyMember, L4])

spellSelect=partySpellsGrid[# inventoryColumn, pointerSpell]

if spellShow=true and onceSync=true
{
	instance_create_layer(0,0,"littleSquareLayer",fakeSyncObj)
	onceSync=false
}

if spellShow=true and inventoryShow=false and keyboard_check_pressed(vk_enter) and !instance_exists(fakeSyncObj)
{
	partySpellsGrid[# inventoryColumn, pointerSpell]="---"
}

if spellShow=true and keyboard_check_pressed(vk_backspace)
{
	preventMove=false
	invArrowX=52
	pointerSpell=0
	L1=0
	L2=1
	L3=2
	L4=3
	inventoryColumn=0
	onceSync=false
	selectedThing=0
	timer1=0
	spellShow=false
}
}