cmdTimer=0
mensajesTotales=real(managerMain.howManyEnemies)+real(managerMain.partyMembers)

displayedCommand=0

orderCmd=load_csv("notModify.csv")
partyStats=load_csv("partyStats.csv")
partySpeeds=[0,0,0,0]
//managerMain.commandText=managerMain.forthName+" attacked "+managerMain.whatDidYouAttack[3]+"."	