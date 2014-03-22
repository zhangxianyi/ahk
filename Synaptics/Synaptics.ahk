TouchpadToggle() {
	SynAPI:=ComObjCreate("SynCtrl.SynAPICtrl"), SynDev:=ComObjCreate("SynCtrl.SynDeviceCtrl")
	SynAPI.Initialize
	SynDev.Select(SynAPI.FindDevice(0,2,-1))
	State:=!SynDev.GetLongProperty(268435825) ? 1 : 0
	if (State == 1)
	{
	    msgbox, "touchpad OFF"
	}
	else
	{
	    msgbox, "touchpad ON"
	}
	SynDev.SetLongProperty(268435825, State)
}

#F10::
TouchpadToggle()
return
