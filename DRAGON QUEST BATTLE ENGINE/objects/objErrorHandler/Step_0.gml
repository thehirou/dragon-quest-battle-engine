if global.newTypeError=true
{

	if endStepCenter=true
{
	window_center();
	endStepCenter=false
}
	
	
	switch (string_height(errorMsg)) {
	    case 1:
	        whichPlace=0
	        break;
			
	    case 2:
	        whichPlace=10
	        break;
			
	    case 3:
	        whichPlace=10+10
	        break;
			
	    case 4:
	        whichPlace=10+10+10
	        break;
			
	    case 5:
	        whichPlace=10+10+10+10
	        break;
			
	    case 6:
	        whichPlace=10+10+10+10+10
	        break;
			
	    default:
	        whichPlace=-9999
	        break;
	}
	
	if room!=errorRoom
	{
	room_goto(errorRoom)
	}
	instance_destroy(managerMain)

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
}