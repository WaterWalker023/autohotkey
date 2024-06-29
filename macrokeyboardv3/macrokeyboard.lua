lmc.minimizeToTray = true
clear()

require("listofkeys")


--lmc_log_all()
--lmc_minimize()
print('Running')
--lmc_assign_keyboard('MACROS2');
lmc_device_set_name('MACROS','167F4C24')
lmc_device_set_name('MACROS2','366C46D5')
lmc_print_devices()
lmc_set_handler('MACROS',function(button, direction)
	if (direction == 1) then return end
	onkeypress(button,0)
	end)
	
lmc_set_handler('MACROS2',function(button, direction)
	if (direction == 1) then return end
	onkeypress(button,1)
	end)
