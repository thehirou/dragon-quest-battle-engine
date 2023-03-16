randomize()
debug=false
enemyWhat=load_csv("enemyCsv.csv")
attackIndex=load_csv("attacksCsv.csv")
miscIndex=load_csv("miscCsv.csv")
inventoryGrid=load_csv("inventoryCsv.csv")
partySpellsGrid=load_csv("partySpells.csv")

meCagoEnDios=""

enemyOrder="A"
enemyList="Ajam x3\nPito x2"
amountE1=1
amountE2=1
amountE3=1
amountE4=1
bigWindow=1
yScaleEnemyBox=7
yEnemyBox=0

selectListEnemy=1
selectListGroup=1
currentGroup=1
selecEnemX=114
selecEnemY=154
selecGroupX=0
selecGroupY=0

endStepCenter=true
whichPartyMember=0
holdingItem=""
spellSelect=""
inventoryColumn=0
pointerInv=0
pointerSpell=0

onceSync=true

L1=0
L2=1
L3=2
L4=3

spellA1=string(partySpellsGrid[# 0,0])  //DEFAULT VALUES
spellA2=string(partySpellsGrid[# 0,1])
spellA3=string(partySpellsGrid[# 0,2])
spellA4=string(partySpellsGrid[# 0,3])

spellB1=string(partySpellsGrid[# 1,0])
spellB2=string(partySpellsGrid[# 1,1])
spellB3=string(partySpellsGrid[# 1,2])
spellB4=string(partySpellsGrid[# 1,3])

invA1=string(inventoryGrid[# 0, 0]) //DEFAULT VALUES
invA2=string(inventoryGrid[# 0, 1])
invA3=string(inventoryGrid[# 0, 2])
invA4=string(inventoryGrid[# 0, 3])

invB1=string(inventoryGrid[# 1, 0])
invB2=string(inventoryGrid[# 1, 1])
invB3=string(inventoryGrid[# 1, 2])
invB4=string(inventoryGrid[# 1, 3])

invArrowX=52
invDrawArrowY=160

enemy1SpriteX=0
enemy2SpriteX=0
enemy3SpriteX=0
enemy4SpriteX=0

window_set_size(256*real(enemyWhat[# 0,28]),240*real(enemyWhat[# 0,28])) //LINE 28 IN THE CSV
font_add_enable_aa(false)
global.dqFont = font_add(working_directory + "dqFont.TTF", 6, false, false, 32, 127);

beepSound=string(miscIndex[# 1, 2])+".ogg"
global.beepAudioOgg=audio_create_stream(beepSound)

preBattleSound=string(miscIndex[# 1, 3])+".ogg"
global.preBattleAudioOgg=audio_create_stream(preBattleSound)

battleMusic=string(miscIndex[# 1, 4])+".ogg"
global.battleMusicOgg=audio_create_stream(battleMusic)
letsGoToBattle=false
inventoryShow=false
enemSelec=false
spellShow=false

commandText="Error"

preventMove=false

coloredWorld=real(miscIndex[# 1,0])
turnToSelect=0
selectedThing=0


selectionTime=true

global.fakeSyncTransitions=real(miscIndex[# 1,1])

whatDidParty1Do="Wait"
whatDidParty2Do="Wait"
whatDidParty3Do="Wait"
whatDidParty4Do="Wait"
whatDidYouAttack[0]="None"
whatDidYouAttack[1]="None"
whatDidYouAttack[2]="None"
whatDidYouAttack[3]="None"

drawArrowY=160
placeEnemy1=real(enemyWhat[# 0,30])
placeEnemy2=real(enemyWhat[# 0,31])
placeEnemy3=real(enemyWhat[# 0,32])
placeEnemy4=real(enemyWhat[# 0,33])

#region //FIRST ENEMY INIT
enemy1Name=string(enemyWhat[# 0,0]) //default values
enemy1HP=real(enemyWhat[# 1,1])
enemy1MP=real(enemyWhat[# 1,2])
randomEncounter=real(enemyWhat[# 0,29])
if randomEncounter=0
{
enemy1Spr=sprite_add(string(enemyWhat[# irandom_range(1,ds_grid_width(enemyWhat)-2),9])+".png",1,false,false,16,32)
}else if randomEncounter=1
{
enemy1Spr=sprite_add(string(enemyWhat[# placeEnemy1,9])+".png",1,false,false,16,32)
}else{enemy1Spr=errorSprite}
sprite_set_offset(enemy1Spr, sprite_get_width(enemy1Spr)/2, sprite_get_height(enemy1Spr));
#endregion

#region //SECOND ENEMY INIT
enemy2Name=string(enemyWhat[# 0,0]) //default values
enemy2HP=real(enemyWhat[# 1,1])
enemy2MP=real(enemyWhat[# 1,2])
randomEncounter=real(enemyWhat[# 0,29])
if randomEncounter=0
{
enemy2Spr=sprite_add(string(enemyWhat[# irandom_range(1,ds_grid_width(enemyWhat)-2),9])+".png",1,false,false,16,32)
}else if randomEncounter=1
{
enemy2Spr=sprite_add(string(enemyWhat[# placeEnemy2,9])+".png",1,false,false,16,32)
}else{enemy2Spr=errorSprite}
sprite_set_offset(enemy2Spr, sprite_get_width(enemy2Spr)/2, sprite_get_height(enemy2Spr));
#endregion

#region //FIRST ENEMY INIT
enemy3Name=string(enemyWhat[# 0,0]) //default values
enemy3HP=real(enemyWhat[# 1,1])
enemy3MP=real(enemyWhat[# 1,2])
randomEncounter=real(enemyWhat[# 0,29])
if randomEncounter=0
{
enemy3Spr=sprite_add(string(enemyWhat[# irandom_range(1,ds_grid_width(enemyWhat)-2),9])+".png",1,false,false,16,32)
}else if randomEncounter=1
{
enemy3Spr=sprite_add(string(enemyWhat[# placeEnemy3,9])+".png",1,false,false,16,32)
}else{enemy3Spr=errorSprite}
sprite_set_offset(enemy3Spr, sprite_get_width(enemy3Spr)/2, sprite_get_height(enemy3Spr));
#endregion

#region //FOURTH ENEMY INIT
enemy4Name=string(enemyWhat[# 0,0]) //default values
enemy4HP=real(enemyWhat[# 1,1])
enemy4MP=real(enemyWhat[# 1,2])
randomEncounter=real(enemyWhat[# 0,29])
if randomEncounter=0
{
enemy4Spr=sprite_add(string(enemyWhat[# irandom_range(1,ds_grid_width(enemyWhat)-2),9])+".png",1,false,false,16,32)
}else if randomEncounter=1
{
enemy4Spr=sprite_add(string(enemyWhat[# placeEnemy4,9])+".png",1,false,false,16,32)
}else{enemy4Spr=errorSprite}
sprite_set_offset(enemy4Spr, sprite_get_width(enemy4Spr)/2, sprite_get_height(enemy4Spr));
#endregion



partyMembers=real(enemyWhat[# 0,14])

whatDidAppear=" appeared!"

restartWithEnter=false
timer1=0	

infoTextY=21
infoTextX=112
boxInfoX=room_width/2
boxInfoScaleX=4

subImgTintilineo=0

firstHP=real(enemyWhat[# 0,15])
firstMP=real(enemyWhat[# 0,16])
firstName=string(enemyWhat[# 0,17])

scndHP=real(enemyWhat[# 0,18])
scndMP=real(enemyWhat[# 0,19])
scndName=string(enemyWhat[# 0,20])

thrdHP=real(enemyWhat[# 0,21])
thrdMP=real(enemyWhat[# 0,22])
thrdName=string(enemyWhat[# 0,23])

forthHP=real(enemyWhat[# 0,24])
forthMP=real(enemyWhat[# 0,25])
forthName=string(enemyWhat[# 0,26])

afterIntroText=false

anyError=false
varAnim=0
yTotalFirstTextBox=7

littleSquareX=110

stopTransition=true

varAnimX=0
xTotalFirstTextBox=16

timer=0
pressedEnter=false
canNoLongerInit=false

flashObj.image_speed=0
preBattleSnd=false

howManyEnemies=0



global.newTypeError=false
error0001=false //oldTypeError but it still works
error0002=false //oldTypeError but it still works
error0003=false //oldTypeError but it still works
error0004=false //oldTypeError but it still works
global.error0005=false
global.error0006=false


endStepCenter=true
quantityItem=inventoryGrid[# 4, 0]

