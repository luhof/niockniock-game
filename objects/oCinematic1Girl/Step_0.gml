/// @description ?
x -= 0.01;
cinematicTimeout -=1;

if(cinematicTimeout <= 0){
	room_goto_next();	
}