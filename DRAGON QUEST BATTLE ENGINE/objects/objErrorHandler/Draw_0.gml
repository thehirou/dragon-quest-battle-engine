if room=errorRoom
{
	draw_set_font(global.dqFont)
	draw_sprite(errorSprite,0,room_width/2,room_height/2)
	
	if global.error0005=true
	{
		draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,16,7,0,c_red,1)
		draw_text_ext_color(46,156,"Error 0005:\nSelected turn bigger than actual party members.\nRestart.",10,180,c_red,c_red,c_red,c_red,1)
		draw_sprite_ext(arrowSpr,subImgTintilineo,46,189+10,1,1,0,c_red,1)	
	}
	
	if global.error0006=true
	{
		errorMsg="Error 0006:\nSelected item has an illegal ammount\nRestart."
		draw_sprite_ext(textBox,0,room_width/2,(room_height/2)+65,16,7,0,c_red,1)
		draw_text_ext_color(46,156,errorMsg,10,180,c_red,c_red,c_red,c_red,1)
		draw_sprite_ext(arrowSpr,subImgTintilineo,46,189,1,1,0,c_red,1)	
	}
	
}