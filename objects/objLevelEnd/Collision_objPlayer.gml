/// @description Move to next place

with(objPlayer){
	if(hasControl){
		hasControl = false
		SlideTransition(TRANS_MODE.GOTO, other.target)
	}
}